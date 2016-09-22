User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
<<<<<<< HEAD
             admin:     true,
=======
             admin: true,
>>>>>>> a10bfc58d22038db71883d0c55841ed599741361
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
<<<<<<< HEAD
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
=======
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
>>>>>>> a10bfc58d22038db71883d0c55841ed599741361
end
