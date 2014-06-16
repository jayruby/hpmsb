json.array!(@division_categories) do |division_category|
  json.extract! division_category, :id, :name, :description, :Division_id
  json.url division_category_url(division_category, format: :json)
end
