class History < ActiveRecord::Base
	validates :title, presence: true
	validates :history, presence: true
end
