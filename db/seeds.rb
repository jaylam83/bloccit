require 'faker'

#Create posts
50.times do   
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end

#Creating unique post
Post.find_or_create_by(:title => "Unique Post", :body => "If correct this will show up")

posts = Post.all 

#Create Comments
100.times do 
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end

#Unique comment
Comment.find_or_create_by(:post => Post.first, :body => "This comment is unique and should only post once")


puts "Seed Finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

