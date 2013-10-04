require 'net/http'
require "uri"

class CoursesController < ApplicationController

  def index
    @courses = Course.all

    if params[:from]
      @from = params[:from]


      uri = URI.encode("http://maps.googleapis.com/maps/api/distancematrix/json?lang=sv_SE&mode=driving&language=se-SV&sensor=false&origins=#{@from}&destinations=#{destinations(@courses)}")
      response = Net::HTTP.get_response(URI.parse(uri))
      json = JSON.parse(response.body)

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
        courses << course
      end

      @courses = courses.sort_by{ |c| c.distance_value }
    end
  end


  private
    def destinations(courses)
      arr = []
      courses.each{|c| arr << "#{c.latitude},#{c.longitude}" }
      arr.join("|")
    end

end