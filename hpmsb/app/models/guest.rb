class Guest < ActiveRecord::Base
	validates :guest_id, presence: true
	validates :full_name, presence: true
	validates :address, presence: true
	validates :cek_in, presence: true
	validates :cek_out, presence: true
	validates :necessary, presence: true
	validates :price, presence: true
end
