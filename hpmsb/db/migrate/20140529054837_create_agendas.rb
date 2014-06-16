class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :agenda_id
      t.date :date
      t.text :event
      t.text :venue

      t.timestamps
    end
  end
end
