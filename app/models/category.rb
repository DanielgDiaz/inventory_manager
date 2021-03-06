class Category < ApplicationRecord
    has_many :articles, dependent: :restrict_with_exception
    belongs_to :parent, class_name: 'Category', optional: true, foreign_key: :category_id 
    has_many :children, class_name: 'Category', dependent: :destroy
end
