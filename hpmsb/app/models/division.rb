class Division < ActiveRecord::Base
 	validates :division_id, presence: true
  	validates :program, presence: true
  	validates :start_date, presence: true
  	validates :end_date, presence: true
  	validates :cost, presence: true
  	validates :status, presence: true
end

