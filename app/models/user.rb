class User < ApplicationRecord
  has_secure_password
  enum role: [:tecnico, :admin]
end

