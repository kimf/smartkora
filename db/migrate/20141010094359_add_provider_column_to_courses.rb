class AddProviderColumnToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :provider, :string
  end
end
