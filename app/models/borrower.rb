class Borrower < ActiveRecord::Base
  has_many :loaned_books
  has_many :books, through: :loaned_books
end
