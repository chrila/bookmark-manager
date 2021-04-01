class BookmarkType < ApplicationRecord
  has_many :bookmarks, dependent: :delete_all

  def to_s
    name
  end
end
