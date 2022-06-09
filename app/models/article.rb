class Article < ApplicationRecord
    validates :title, :price, :description, :quantity, :category, :location, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }
    belongs_to :location
    belongs_to :category
end
