class AddJournalPdfToJournals < ActiveRecord::Migration
  def change
    add_column :journals, :journal_pdf, :string
  end
end
