json.array!(@alumnis) do |alumni|
  json.extract! alumni, :id, :alumni_id, :full_name, :place_of_birth, :birthday, :ksb_address, :sub_district, :address, :gender, :email, :phone, :pin_bb, :college, :major
  json.url alumni_url(alumni, format: :json)
end
