class Profile < ActiveRecord::Base
  validates :profile_id, presence: true
  validates :title, presence: true
  validates :address, presence: true
  validates :vision, presence: true
  validates :mission, presence: true
end
