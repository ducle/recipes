# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.find_or_create_by_email('user@foodient.com')
user.password = 'password'
user.save!
15.times{|i|
  p "Creating food item #{i+1}.."
  food = Food.new
  food.description = "Cute recipe to make apple Dumplings:asdd/FSDFFF"
  food.image = File.open("#{Rails.root}/public/images/img#{i+1}.jpg")
  food.site_source = File.open("#{Rails.root}/public/images/source#{i%3 + 1}.jpg")
  food.save
}
