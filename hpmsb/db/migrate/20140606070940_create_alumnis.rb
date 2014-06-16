class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.string :alumni_id
      t.string :full_name
      t.string :place_of_birth
      t.date :birthday
      t.text :ksb_address
      t.string :sub_district
      t.text :address
      t.string :gender
      t.string :email
      t.string :phone
      t.string :pin_bb
      t.string :college
      t.string :major

      t.timestamps
    end
  end
end
