require 'rails_helper'

RSpec.describe "loaned_books/edit", type: :view do
  before(:each) do
    @loaned_book = assign(:loaned_book, LoanedBook.create!(
      :book_id => 1,
      :borrower_id => 1
    ))
  end

  it "renders the edit loaned_book form" do
    render

    assert_select "form[action=?][method=?]", loaned_book_path(@loaned_book), "post" do

      assert_select "input#loaned_book_book_id[name=?]", "loaned_book[book_id]"

      assert_select "input#loaned_book_borrower_id[name=?]", "loaned_book[borrower_id]"
    end
  end
end
