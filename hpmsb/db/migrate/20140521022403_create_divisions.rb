class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :division_id
      t.string :program
      t.date :start_date
      t.date :end_date
      t.decimal :cost
      t.string :status

      t.timestamps
    end
  end
end
