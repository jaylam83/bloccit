require 'faker'

#Create posts
50.times do   
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end

posts = Post.all 

#Create Comments
100.times do 
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end

<<<<<<< HEAD


=======
>>>>>>> 73d6f0f22340e5f3c29c8c979d89e767499df9ab
puts "Seed Finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

