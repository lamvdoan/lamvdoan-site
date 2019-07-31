14.times do |blog_count|
  Blog.create!(
    title: "Blog #{blog_count + 1}",
    body: "This is the body",
    topic_id: 1
  )
end

Blog.create!(
    title: "Blog 0",
    body: "This is my 1st time!\r\nthis is the 2^(nd) time\r\n\r\nAlways wait for element to appear first before taking any action.\r\n\r\nfoo_bar_baz\r\n\r\nwww.google.com\r\nhttp://facebook.com\r\nLamvdoan@gmail.com\r\n\r\n```python\r\nYES_BUTTON = \"id=session_timeout_warning_button_yes\"\r\nselenium_helper.wait_until_page_contains_element(YES_BUTTON)\r\nselenium_helper.click_element(YES_BUTTON)\r\n```\r\n",
    description: "Sample Python code\r\n\r\n```python\r\nYES_BUTTON = \"id=session_timeout_warning_button_yes\"\r\nselenium_helper.wait_until_page_contains_element(YES_BUTTON)\r\nselenium_helper.click_element(YES_BUTTON)\r\n```",
    topic_id: 1
  )

puts "Logs: 15 Blogs created"


5.times do |topic_count|
  Topic.create!(
    title: "Topic #{topic_count}",
  )
end

puts "Logs: 5 Blogs created"