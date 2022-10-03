class User < ApplicationRecord
  validates :name, presence: true
  validates :session_id, presence: true
end
