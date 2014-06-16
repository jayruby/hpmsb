json.array!(@divisions) do |division|
  json.extract! division, :id, :division_id, :program, :start_date, :end_date, :cost, :status
  json.url division_url(division, format: :json)
end
