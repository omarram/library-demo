class BorrowedBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :borrower

  validates_presence_of :borrower_id, :book_id
end
