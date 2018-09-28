User.create! user_name: "admin",
             name:  "Admin",
             email: "admin@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             user_type: 3,
             address: Faker::Address.full_address,
             phone: "0966542088",
             activated: true,
             activated_at: Time.zone.now

User.create! user_name: "employee",
             name:  "Employee",
             email: "employee@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             user_type: 2,
             address: Faker::Address.full_address,
             phone: "0966542012",
             activated: true,
             activated_at: Time.zone.now

20.times do |n|
  user_name = "example-#{n+1}"
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  address = Faker::Address.full_address
  phone = "0966542034"
  description = Faker::Lorem.paragraph
  user = User.create! user_name: user_name,
               name: name,
               email: email,
               password: password,
               password_confirmation: password,
               address: address,
               phone: phone
  user.hotels.create! name: name,
                     email: email,
                     address: address,
                     phone: phone,
                     description: description 
end

5.times do |n|
  category = Category.create! name: "category-#{n+1}",
                              description: Faker::Lorem.paragraph
  10.times do 
    category.posts.create! title: Faker::Book.title,
                           content: Faker::Lorem.paragraphs,
                           user_id: 1
  end 
end
