class Book < ActiveRecord::Base
  has_many :publications
  has_many :authors, through: :publications
  has_many :borrowed_books
  has_many :borrowers, through: :borrowed_books

  validates_presence_of :title
end
