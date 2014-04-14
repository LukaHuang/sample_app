namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Lin Can",
                         email: "q26766@gmail.com",
                         password: "123123",
                         password_confirmation: "123123",
                         admin: true)
    User.create!(name: "can",
                 email: "example@gmail.com",
                 password: "123123",
                 password_confirmation: "123123")
    99.times do |n|
      name  = Faker::Name.name
      email = "can-#{n+1}@gmail.com"
      password  = "123123"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end