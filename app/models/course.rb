class Course < ActiveRecord::Base
  # geocoded_by :address
  # reverse_geocoded_by :latitude, :longitude

  attr_writer :directions, :distance, :distance_value, :duration, :duration_value, :weather_table
  attr_reader :directions, :distance, :distance_value, :duration, :duration_value, :weather_table


  default_scope order('name DESC')
end
