User.create!(
  email: "rupinski.k@gmail.com",
  password: "1234",
  name: "Krzysztof Rupiński",
  is_confirmed: 1,
  user_type: 1
  )

10.times do |article|
  Article.create!(
    title: "My blog #{article} post",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    user_id: '1'
    )
end

puts "10 articles created"

puts "1 user created"

3.times do |gallery|
  Gallery.create(
    user_id: '1',
    title: "My #{gallery} gallery",
    description: "To jest opis",
    thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "3 galleries created"


3.times do |picture|
  Picture.create(
    size: '350x200',
    image_link: "https://via.placeholder.com/350x200",
    description: "Description",
    gallery_id: "0"
    )
end

3.times do |picture|
  Picture.create(
    size: '350x200',
    image_link: "https://via.placeholder.com/350x200",
    description: "Description",
    gallery_id: "1"
    )
end

3.times do |picture|
  Picture.create(
    size: '350x200',
    image_link: "https://via.placeholder.com/350x200",
    description: "Description",
    gallery_id: "2"
    )
end

puts "3 pictures into 3 gallery created"





