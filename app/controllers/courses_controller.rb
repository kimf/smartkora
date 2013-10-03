require 'net/http'
require "uri"

class CoursesController < ApplicationController

  def index
    @courses = Course.all
    if params[:from]
      @from = params[:from]
      @pos  = Geocoder.coordinates("#{params[:from]}")

      courses = []
      @courses.each do |course|

        uri = URI.encode("http://maps.googleapis.com/maps/api/distancematrix/json?mode=driving&language=se-SV&sensor=false&origins=#{@from}&destinations=#{course.latitude},#{course.longitude}")
        response = Net::HTTP.get_response(URI.parse(uri))

        json = JSON.parse(response.body)
        vars = json["rows"][0]["elements"][0]

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

end

#TODO.. just make 1 call to the api instead of 1 for each course..