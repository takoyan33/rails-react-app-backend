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
