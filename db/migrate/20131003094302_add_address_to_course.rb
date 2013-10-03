class AddAddressToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :address, :string
  end
end
