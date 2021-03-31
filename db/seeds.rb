require 'faker'

## clean DB
Bookmark.delete_all
Category.delete_all
BookmarkType.delete_all

## Categories
20.times do
  Category.create!(name: Faker::Hipster.word, public: Faker::Boolean.boolean, parent_category: Category.all.sample)
end

## Bookmark types
BookmarkType.create!(name: 'Video')
BookmarkType.create!(name: 'Article')
BookmarkType.create!(name: 'Paper')
BookmarkType.create!(name: 'Interview')
BookmarkType.create!(name: 'Audio')
BookmarkType.create!(name: 'Other')

## Bookmarks
50.times do
  Bookmark.create(name: Faker::Lorem.words(number: 3).join(' '), url: Faker::Internet.url, bookmark_type: BookmarkType.all.sample, category: Category.all.sample)
end
