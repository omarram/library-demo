class BorrowedBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :borrower
end
