class CreateLoanedBooks < ActiveRecord::Migration
  def change
    create_table :loaned_books do |t|
      t.integer :book_id
      t.integer :borrower_id
      t.datetime :due_date_time

      t.timestamps null: false
    end
    add_index :loaned_books, ["book_id", "borrower_id"]
  end
end
