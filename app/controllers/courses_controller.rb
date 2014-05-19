require 'open-uri'
require 'net/http'
require "uri"

class CoursesController < ApplicationController

  def index
    @courses = Course.all

    @from = params[:from] || "Skrakgränd 7, Fagersjö"

    json = Rails.cache.fetch("http://maps.googleapis.com/maps/api/distancematrix/json?lang=sv_SE&mode=driving&language=se-SV&sensor=false&origins=#{@from}&destinations=#{destinations(@courses)}") do
      uri = URI.encode("http://maps.googleapis.com/maps/api/distancematrix/json?lang=sv_SE&mode=driving&language=se-SV&sensor=false&origins=#{@from}&destinations=#{destinations(@courses)}")
      response = Net::HTTP.get_response(URI.parse(uri))
      JSON.parse(response.body)
    end

    courses = []
    @courses.each_with_index do |course, index|
      vars = json["rows"][0]["elements"][index]

      if vars["duration"].blank?
        course.distance       = ""
        course.distance_value = 0
        course.duration       = ""
        course.duration_value = 0
      else
        course.distance       = vars["distance"]["text"]
        course.distance_value = vars["distance"]["value"]
        course.duration       = vars["duration"]["text"]
        course.duration_value = vars["duration"]["value"]
      end
      course.directions = nil

      course.weather_table = get_weather_table(course)

      courses << course
    end

    @courses = courses.sort_by{ |c| c.distance_value }
  end


  private
    def destinations(courses)
      arr = []
      courses.each{|c| arr << "#{c.latitude},#{c.longitude}" }
      arr.join("|")
    end

    def get_weather_table(course)
      Rails.cache.fetch("course_#{course.id}_weather_table_#{Time.now.strftime('%F %H:%m')}") do
        return nil if course.weather_link.empty?

        doc = Nokogiri::HTML(open(course.weather_link).read)
        doc.encoding = 'UTF-8'
        table = doc.search(".box table:not(.nearby-observations-table)")
        table.search('tr:last-child').remove

        table.to_html
      end
    end

end
