class Book < ActiveRecord::Base
  has_many :publications
  has_many :authors, through: :publications

  validates_presence_of :title
end
