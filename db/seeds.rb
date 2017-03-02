require 'random_data'


3.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "asdfzxcv",
    password_confirmation: "asdfzxcv"
  )
end

50.times do

  # Wiki.create!(
  #   title: RandomData.random_sentence,
  #   body: RandomData.random_paragraph,
  #   user_id: 1
  # )
  Wiki.create!(
    title: Faker::Lorem.sentences,
    body: Faker::Lorem.paragraph,
    private: true,
    user_id: 4
  )

end

puts "seed finished"
puts "#{Wiki.count} wikis created"
