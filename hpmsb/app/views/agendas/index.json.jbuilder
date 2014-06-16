json.array!(@agendas) do |agenda|
  json.extract! agenda, :id, :agenda_id, :date, :event, :venue
  json.url agenda_url(agenda, format: :json)
end
