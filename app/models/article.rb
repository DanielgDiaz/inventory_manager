class Article < ApplicationRecord
    validates :title, :price, :description, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    belongs_to :category
    belongs_to :subcategory

end
