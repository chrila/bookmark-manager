class Bookmark < ApplicationRecord
  belongs_to :bookmark_type
  belongs_to :category
end
