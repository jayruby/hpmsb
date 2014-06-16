json.array!(@guests) do |guest|
  json.extract! guest, :id, :number, :guest_id, :full_name, :address, :cek_in, :cek_out, :necessary, :price
  json.url guest_url(guest, format: :json)
end
