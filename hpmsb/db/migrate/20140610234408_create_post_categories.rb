class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.string :name
      t.text :description
      t.references :Post, index: true

      t.timestamps
    end
  end
end