p "create Users"
User.create!(
  email: 'user1@example.com',
  password: 'aaaaaaaa',
  name: '佐藤 太郎',
  self_introduction: '佐藤太郎です',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_images/1.jpg")
)
User.create!(
  email: 'user2@example.com',
  password: 'aaaaaaaa',
  name: '平野 貴史',
  self_introduction: '平野貴史です',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_images/2.jpg")
)
User.create!(
  email: 'user3@example.com',
  password: 'aaaaaaaa',
  name: '田渕 望',
  self_introduction: '田渕望です',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_images/3.jpg")
)
User.create!(
  email: 'user4@example.com',
  password: 'aaaaaaaa',
  name: '高谷 瑠美',
  self_introduction: '高谷瑠美です',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_images/4.jpg")
)