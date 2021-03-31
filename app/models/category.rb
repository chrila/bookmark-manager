class Category < ApplicationRecord
  belongs_to :parent_category, class_name: 'Category', foreign_key: :category_id, optional: true
  has_many :child_categories, class_name: 'Category', foreign_key: :category_id, dependent: :delete_all
  has_many :bookmarks
end
