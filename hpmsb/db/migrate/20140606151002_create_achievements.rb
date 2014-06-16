class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :achievement
      t.text :organizer
      t.string :champ
      t.date :date

      t.timestamps
    end
  end
end
