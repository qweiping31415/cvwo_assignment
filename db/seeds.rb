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


users = User.order(:created_at).take(6)
10.times do

	content = Faker::Lorem.sentence(5)
	users.each do |user|
    src = ["tag1","tag2","tag3","tag4"]
	  #tag_list = Faker::Lorem.words(3)
    num = 1 + rand(4)
    tag_list = src.pop(num).join(",")

	  user.microposts.create(content: content, tag_list: tag_list)
	end
end

Tag.create(name: "tag1")
Tag.create(name: "tag2")
Tag.create(name: "tag3")
Tag.create(name: "tag4")





