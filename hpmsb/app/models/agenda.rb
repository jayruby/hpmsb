class Agenda < ActiveRecord::Base
	validates :agenda_id, presence: true, length: {maximum: 60}
	validates :date, presence: true
	validates :event, presence: true
	validates :venue, presence: true
end
