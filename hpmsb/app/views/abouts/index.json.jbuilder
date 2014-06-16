json.array!(@abouts) do |about|
  json.extract! about, :id, :title, :body
  json.url about_url(about, format: :json)
end
