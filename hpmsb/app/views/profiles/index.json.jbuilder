json.array!(@profiles) do |profile|
  json.extract! profile, :id, :profile_id, :title, :address, :vision, :mission
  json.url profile_url(profile, format: :json)
end
