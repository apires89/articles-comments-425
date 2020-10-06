
### seed file

#1st clean database

puts "Cleaning DB"

  Article.destroy_all

10.times do

puts "creating one random article"
  Article.create(title: Faker::BossaNova.song, author: Faker::BossaNova.artist, description: Faker::Lorem.sentence, upvotes: rand(10..40))
end

