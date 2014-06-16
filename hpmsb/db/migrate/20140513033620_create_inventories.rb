class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :inventory_id
      t.string :name
      t.string :number
      t.string :status

      t.timestamps
    end
  end
end
