class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.decimal :price
      t.string :image_url
      t.text :description, scale: 2

      t.timestamps
    end
  end
end
