json.array!(@loaned_books) do |loaned_book|
  json.extract! loaned_book, :id, :book_id, :borrower_id, :due_date_time
  json.url loaned_book_url(loaned_book, format: :json)
end
