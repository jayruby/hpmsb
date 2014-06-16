class CreateElderMembers < ActiveRecord::Migration
  def change
    create_table :elder_members do |t|
      t.string :elder_member_id
      t.string :name
      t.string :place_of_birth
      t.date :birthday
      t.text :ksb_address
      t.string :sub_district
      t.text :jogja_address
      t.text :profession
      t.text :experience

      t.timestamps
    end
  end
end
