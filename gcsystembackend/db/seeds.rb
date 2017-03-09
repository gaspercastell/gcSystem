5.times do
  user = User.create({username: Faker::Pokemon.name, password: Faker::Cat.name})
end
