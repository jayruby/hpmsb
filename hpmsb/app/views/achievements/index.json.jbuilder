json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :achievement, :organizer, :champ, :date
  json.url achievement_url(achievement, format: :json)
end
