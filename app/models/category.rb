class Category < ApplicationRecord
    has_many :articles, dependent: :restrict_with_exception
    has_many :subcategories
end
