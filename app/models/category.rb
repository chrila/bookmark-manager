class Category < ApplicationRecord
  belongs_to :parent_category, class_name: 'Category', foreign_key: :category_id, optional: true
  has_many :child_categories, class_name: 'Category', foreign_key: :category_id, dependent: :delete_all
  has_many :bookmarks, dependent: :delete_all

  def to_s
    name
  end

  def as_json
    json = {
      name: name,
      public: public,
      parent_category: parent_category.to_s
    }

    json['bookmarks'] = []
    bookmarks.each do |b|
      json['bookmarks'] << b.as_json
    end

    json
  end
end
