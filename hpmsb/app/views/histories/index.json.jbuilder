json.array!(@histories) do |history|
  json.extract! history, :id, :title, :history
  json.url history_url(history, format: :json)
end
