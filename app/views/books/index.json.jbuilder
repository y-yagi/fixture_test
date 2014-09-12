json.array!(@books) do |book|
  json.extract! book, :id, :name, :price, :published_at, :author_id
  json.url book_url(book, format: :json)
end
