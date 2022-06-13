class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  enum role: [:tecnico, :admin]

  before_save :downcase_attributes


  private 
  def downcase_attributes
    self.name = name.downcase
  end
end

