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
12.times do |n|
  user_name = "example-#{n+1}"
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  user_type = 1,
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
                           content: Faker::Lorem.paragraph(1000),
                           user_id: 1
  end 
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 10,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 1,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 20,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 2,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 200000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 15,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 3,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 4,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 5,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 6,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end

1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 7,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end


1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 8,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end


1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 9,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end


1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 10,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end


1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 11,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end


1.times do |n|
  room_detail = RoomDetail.create! arceage: 20,
                                   room_number: 7,
                                   description: Faker::Lorem.paragraph,
                                   hotel_id: 12,
                                   image: "img3.jpg"
  1.times do
    room_detail.room_type_services.create! name: "phong binh dan",
                                           price: 100000,
                                           description: Faker::Lorem.paragraph
  end
  1.times do
    room_detail.room_type_services.create! name: "phong trung cap",
                                           price: 300000,
                                           description: Faker::Lorem.paragraph
  end
end
