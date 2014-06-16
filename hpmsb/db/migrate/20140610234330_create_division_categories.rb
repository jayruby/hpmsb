class CreateDivisionCategories < ActiveRecord::Migration
  def change
    create_table :division_categories do |t|
      t.string :name
      t.text :description
      t.references :Division, index: true

      t.timestamps
    end
  end
end
