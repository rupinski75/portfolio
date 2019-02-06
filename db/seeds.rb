@user1 = User.create!(
  email: "rupinski.k@gmail.com",
  password: "123456",
  name: "Krzysztof Rupiński",
  admin: true
  )

@user2 = User.create!(
  email: "s11898@pjatk.edu.pl",
  password: "123456",
  name: "Adrian Powierża",
  admin: false
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
  Gallery.create!(
    user_id: '1',
    title: "My #{gallery} gallery",
    description: "To jest opis",
    thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "3 galleries created"


10.times do |picture|
  puts Picture.create!(
    size: '350x200',
    image_link: "https://via.placeholder.com/350x200",
    description: "Description",
    gallery_id: 1
    )

end

10.times do |picture|
  Picture.create!(
    size: '350x200',
    image_link: "https://via.placeholder.com/350x200",
    description: "Description",
    gallery_id: 2
    )
end

10.times do |picture|
  Picture.create!(
    size: '350x200',
    image_link: "https://via.placeholder.com/350x200",
    description: "Description",
    gallery_id: 3
    )
end

puts "10 pictures into 3 gallery created"

Tag.create!(name: '#Podróże')
Tag.create!(name: '#Góry')
Tag.create!(name: '#Sport')
Tag.create!(name: '#Jedzenie')
Tag.create!(name: '#Zawody')
Tag.create!(name: '#Hobby')
Tag.create!(name: '#Sztuka')
Tag.create!(name: '#Architektura')
Tag.create!(name: '#Malarstwo')
Tag.create!(name: '#Fotografia')


puts "10 tags created"


30.times do |picture_tag|
  PictureTag.create!(
      tag_id: Random.rand(1..10),
      picture_id: Random.rand(1..30)
    )
  puts picture_tag
end

puts "10 picture tags created"

10.times do |comment|
  puts Comment.create!(
      body: "To jest komentarz #{comment}",
      article_id: Random.rand(1..10),
      user_id: Random.rand(1..2)
    )
end

puts "10 comments created"



