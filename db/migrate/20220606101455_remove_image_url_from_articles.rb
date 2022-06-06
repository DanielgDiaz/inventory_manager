class RemoveImageUrlFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :image_url, :string
  end
end
