class AddWeatherLinkToCoure < ActiveRecord::Migration
  def change
    add_column :courses, :weather_link, :string

    Course.where(name: "Österåkers GK").first.update_attribute(:weather_link, "http://www.golfvader.nu/%C3%B6ster%C3%A5kers-gk/10d/yr-smhi")
    Course.where(name: "Haninge GK").first.update_attribute(:weather_link, "http://www.golfvader.nu/haninge-gk/10d/yr-smhi")
    Course.where(name: "Mälarö GK").first.update_attribute(:weather_link, "http://www.golfvader.nu/m%C3%A4lar%C3%B6-gk-skytteholm/10d/yr-smhi")
    Course.where(name: "Kyssinge Golf").first.update_attribute(:weather_link, "http://www.golfvader.nu/kyssinge-gk-ab/10d/yr-smhi")
    Course.where(name: "Nynäshamns GK").first.update_attribute(:weather_link, "http://www.golfvader.nu/nyn%C3%A4shamns-gk/10d/yr-smhi")
    Course.where(name: "Hagby Golf").first.update_attribute(:weather_link, "http://www.golfvader.nu/hagby-gk/10d/yr-smhi")
    Course.where(name: "Bodaholm Golf").first.update_attribute(:weather_link, "http://www.golfvader.nu/bj%C3%B6rklidens-gk/10d/yr-smhi")
    Course.where(name: "Fors Golf").first.update_attribute(:weather_link, "http://www.golfvader.nu/fors-gk/10d/yr-smhi")
    Course.where(name: "Sundsta Golf").first.update_attribute(:weather_link, "")
    Course.where(name: 'Vallentuna GK').first.update_attribute(:weather_link, "http://www.golfvader.nu/vallentuna-gk/10d/yr-smhi")

  end
end
