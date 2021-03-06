class List < ActiveRecord::Base
  validates :title, presence: true
  validates :user_id, presence: true 
  belongs_to :user
  has_many :items
end
