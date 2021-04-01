class Bookmark < ApplicationRecord
  belongs_to :bookmark_type
  belongs_to :category

  def to_s
    name
  end

  def to_json
    {
      name: name,
      url: url,
      type: bookmark_type.to_s
    }
  end
end
