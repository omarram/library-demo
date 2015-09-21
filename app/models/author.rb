class Author < ActiveRecord::Base
  has_many :publications
  has_many :books, through: :publications

  validates_presence_of :first_name, :last_name

  def name
    "#{first_name} #{last_name}"
  end
end
