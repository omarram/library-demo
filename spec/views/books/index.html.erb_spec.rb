require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :isbn => "Isbn",
        :description => "MyText",
        :publisher => "Publisher"
      ),
      Book.create!(
        :title => "Title",
        :isbn => "Isbn",
        :description => "MyText",
        :publisher => "Publisher"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
  end
end
