class Book < ActiveRecord::Base
  has_many :publications
  has_many :authors, through: :publications
  has_many :loaned_books
  has_many :borrowers, through: :loaned_books

  validates_presence_of :title
end
