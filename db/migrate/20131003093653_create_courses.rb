class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.float  :latitude
      t.float  :longitude
      t.timestamps
    end
  end
end
