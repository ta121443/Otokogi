class Group < ApplicationRecord
  has_many :users
  validates :name, presence: true
  validates :session_id, presence: true
end
