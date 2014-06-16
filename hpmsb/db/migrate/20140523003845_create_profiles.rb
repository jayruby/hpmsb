class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :profile_id
      t.string :title
      t.text :address
      t.text :vision
      t.text :mission

      t.timestamps
    end
  end
end
