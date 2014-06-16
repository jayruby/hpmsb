json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :inventory_id, :name, :number, :status
  json.url inventory_url(inventory, format: :json)
end
