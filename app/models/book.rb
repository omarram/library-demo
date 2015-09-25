class Book < ActiveRecord::Base
  has_many :publications
  has_many :authors, through: :publications
  has_many :loaned_books
  has_many :borrowers, through: :loaned_books

  validates_presence_of :title

  has_attached_file :image, styles: { large: "600x600", medium: "300x300", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
