class CreateBorrowedBooks < ActiveRecord::Migration
  def change
    create_table :borrowed_books do |t|
      t.integer :book_id
      t.integer :borrower_id
      t.datetime :due_date

      t.timestamps null: false
    end
    add_index :borrowed_books, ["book_id", "borrower_id"]
  end
end
