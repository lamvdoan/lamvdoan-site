15.times do |blog_count|
  Blog.create!(
    title: "Title #{blog_count}",
    body: "This is the body",
    topic_id: 1
  )
end

puts "Logs: 15 Blogs created"