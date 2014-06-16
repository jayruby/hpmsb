class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :number
      t.string :guest_id
      t.string :full_name
      t.text :address
      t.date :cek_in
      t.date :cek_out
      t.text :necessary
      t.string :price

      t.timestamps
    end
  end
end
