require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end
posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create Unique Post
Post.find_or_create_by!(title: "Unique Title", body:"Unique Body will have unique words")

#Create Unique Comment on Unique Post
Comment.find_or_create_by!(
  post: Post.find_by(title: "Unique Title"),
  body: "Unique Comment is unique and related to Unique Post that has body full of Unique words"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
