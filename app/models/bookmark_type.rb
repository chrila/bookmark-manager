class BookmarkType < ApplicationRecord
  has_many :bookmarks, dependent: :delete_all
end
