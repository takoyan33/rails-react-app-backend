# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SAMPLE_TODOS = [
#   {
#     name: 'Going around the world',
#   },
#   {
#     name: 'graduating from college'
#   },
#   {
#     name: 'publishing a book',
#   }
# ]

# SAMPLE_TODOS.each do |todo|
#   Todo.create(todo)
# end

3.times do |i|
  Book.create!(title: "本 #{i + 1}")
end


3.times do |i|
  Member.create!(fullname: "太郎 #{i + 1}",grade: "2年生", gender: "男" )
end



SAMPLE_NEWS = [
  {
    title: 'Going around the world',
    body: 'Going around the world',
  },
  {
    title: 'Going around the world',
    body: 'Going around the world',
  },
  {
    title: 'Going around the world',
    body: 'Going around the world',
  }
]


SAMPLE_NEWS.each do |news|
  News.create(news)
end


HISTORY = [
  {
    title: "JBA日本ビジネスアート株式会社 長期インターン",
    date: "2020年3月",
    body: "Wordpressサイトの修正やhtml,cssのコーディングやPhotoShopなどのWebデザインの制作を半年間行いました"
  },
  {
    title: "株式会社Conexio 長期インターン",
    date: "2022年4月",
    body: "Ruby on Railsの自社サービスアプリの開発を行う。2022年12月まで行った"
  },
  {
    title: "株式会社メディアライツ 長期インターン",
    date: "2022年9月",
    body: "Unityなどを用いたスマホゲーム開発を行った。2023年3月まで"
  },
  {
    title: "株式会社Poteto 長期インターン",
    date: "2023年2月",
    body: "Reactのサービスの開発を行う。バックエンドがPython,インフラがAWSなど使った事がない技術が多くあり、勉強になった。2023年9月まで"
  },
  {
    title: "株式会社GACCI 長期インターン",
    date: "2023年10月",
    body: "バックエンドがPHPで、フロントのReactのサービスの開発を行う。2024年3月まで"
  },
  {
    title: "株式会社ノースディテール 正社員",
    date: "2024年3月",
    body: "フロントエンドの開発を行う"
  }
]


HISTORY.each do |history|
  History.create(history)
end