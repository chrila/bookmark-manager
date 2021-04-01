class Bookmark < ApplicationRecord
  belongs_to :bookmark_type
  belongs_to :category

  def to_s
    name
  end
end
