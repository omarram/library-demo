require 'rails_helper'

RSpec.describe "loaned_books/show", type: :view do
  before(:each) do
    @loaned_book = assign(:loaned_book, LoanedBook.create!(
      :book_id => 1,
      :borrower_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
