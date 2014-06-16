class Inventory < ActiveRecord::Base
	validates :inventory_id, presence: true
	validates :name, presence: true
	validates :number, presence: true
	validates :status, presence: true
end
