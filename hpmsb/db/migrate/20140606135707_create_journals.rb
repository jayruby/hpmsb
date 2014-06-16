class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :issn
      t.string :volume
      t.string :title
      t.text :authors
      t.text :abstract
      t.date :date

      t.timestamps
    end
  end
end
