# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# i = 1

# puts "Generating sample products"

# while i < 5 do



1.times do
 Product.create(name: "Tasty Fish", 
                 description: "Fried", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon1.jpg"),
                  price: 3.29,
                  active: true)
                 # quantity: 1
  # puts "product created"

# i = i + 1
end
1.times do
 Product.create(name: "Slamon", 
                 description: "Breaded to delecion!", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon2.jpg"),
                  price: 4.39,
                  active: true)
end
1.times do
 Product.create(name: "Tilapia", 
                 description: "Grilled to perfection.", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon3.jpg"),
                  price: 5.49,
                  active: true)
end
1.times do
 Product.create(name: "Caviar", 
                 description: "Not for the faint of heart", 
                 image: File.new("#{Rails.root}/public/images/atlantic-salmon4.jpg"),
                  price: 2.99,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Mmmmm...", 
                 description: "Supercali", 
                 image: File.new("#{Rails.root}/public/images/stock-photo1.jpg"),
                  price: 2.19,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Rainbow trout", 
                 description: "Eat Me", 
                 image: File.new("#{Rails.root}/public/images/stock-photo2.jpg"),
                  price: 7.19,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Guppy", 
                 description: "Dociousal", 
                 image: File.new("#{Rails.root}/public/images/stock-photo3.jpg"),
                  price: 6.29,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "American Flagfish", 
                 description: "Scrumptious", 
                 image: File.new("#{Rails.root}/public/images/stock-photo4.jpg"),
                  price: 8.49,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Black Holly", 
                 description: "Amazing", 
                 image: File.new("#{Rails.root}/public/images/stock-photo5.jpg"),
                  price: 8.29,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Sailfin molly", 
                 description: "Flayed", 
                 image: File.new("#{Rails.root}/public/images/stock-photo6.jpg"),
                  price: 8.39,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Pufferfish", 
                 description: "Large Peices", 
                 image: File.new("#{Rails.root}/public/images/stock-photo7.jpg"),
                  price: 81.49,
                  active: true)
end
                                                      #need to find a pic
1.times do
 Product.create(name: "Bumblebee goby", 
                 description: "Small Peices", 
                 image: File.new("#{Rails.root}/public/images/stock-photo8.jpg"),
                  price: 9.49,
                  active: true)
end


puts "Sample products created"
OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
puts "Generating sample users"


Order.create! id: 15
1.times do |n|
  User.create(email: "user@user.com", 
                 password: "useruser",
                 password_confirmation: "useruser")
puts "user created"
end
# puts "Sample users created"
puts "Generating sample users"
1.times do |n|
  User.create(email: "admin@admin.com", 
                 password: "adminadmin",
                 password_confirmation: "adminadmin",  
                 admin: true)
  puts "admin created"
end
# puts "Sample admins created"
puts "Generating sample super admins"
1.times do |n|
  User.create(email: "super@admin.com", 
                 password: "superadmin",
                 password_confirmation: "superadmin",  
                 super_admin: true)
  puts "super admin  created"
end
# puts "Sample super admins created"