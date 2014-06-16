json.array!(@post_categories) do |post_category|
  json.extract! post_category, :id, :name, :description, :Post_id
  json.url post_category_url(post_category, format: :json)
end
