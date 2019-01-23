User.create!(name:  "Admin User",
             email: "admin@admin.com",
             password:              "adminuser",
             password_confirmation: "adminuser",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "person-#{n+1}@example.org"
  password = "123456"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

Tag.create(name: "Recipe")
Tag.create(name: "Travel")
Tag.create(name: "Fashion/Beauty")
Tag.create(name: "Humour")

#users = User.order(:created_at).take(6)
#10.times do
#	content = Faker::Lorem.sentence(5)
#	users.each do |user|
#	  tag_list = Faker::Lorem.words(3)
#	  user.microposts.create(content: content, tag_list: tag_list)
#	end
#end


