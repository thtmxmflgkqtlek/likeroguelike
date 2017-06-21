# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_allRental.delete_all


User.create(:name => 'hagi', :password => 'password',:adm => true)
User.create(:name => 'satou', :password => 'password',
:adm => false)
Rental.create(:name => 'パソコン')Rental.create(:name => '机')
Rental.create(:name => 'マウス')
Rental.create(:name => 'キーボード')
