class AddProviderColumnToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :provider, :string
    Course.update_all("provider = smartgolfa")


    Course.where(name: "Kyssinge Golf").first.update_attribute(:provider, 'both')
  end
end
