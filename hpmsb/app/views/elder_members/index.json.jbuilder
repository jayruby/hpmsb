json.array!(@elder_members) do |elder_member|
  json.extract! elder_member, :id, :elder_member_id, :name, :place_of_birth, :birthday, :ksb_address, :sub_district, :jogja_address, :profession, :experience
  json.url elder_member_url(elder_member, format: :json)
end
