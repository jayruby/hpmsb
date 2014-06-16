json.array!(@journals) do |journal|
  json.extract! journal, :id, :issn, :volume, :title, :authors, :abstract, :date
  json.url journal_url(journal, format: :json)
end
