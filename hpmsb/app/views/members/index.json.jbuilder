json.array!(@members) do |member|
  json.extract! member, :id, :member_id, :full_name, :place_of_birth, :birthday, :ksb_address, :sub_district, :jogja_address, :gender, :phone, :pin_bb, :college, :major
  json.url member_url(member, format: :json)
end
