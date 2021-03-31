json.extract! bookmark, :id, :name, :url, :bookmark_type_id, :category_id, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
