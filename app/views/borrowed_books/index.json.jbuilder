json.array!(@borrowed_books) do |borrowed_book|
  json.extract! borrowed_book, :id, :book_id, :borrower_id
  json.url borrowed_book_url(borrowed_book, format: :json)
end
