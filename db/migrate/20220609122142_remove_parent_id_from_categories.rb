class RemoveParentIdFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :parent_id, :string
  end
end
