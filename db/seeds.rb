User.create!(name:  "Huyen",
 email: "huyen120495@gmail.com",
 password: "huyen123",
 password_confirmation: "huyen123",
 admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
   email: email,
   password: password,
   password_confirmation: password)
end
