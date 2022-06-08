class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password
  enum role: [:tecnico, :admin]
end

