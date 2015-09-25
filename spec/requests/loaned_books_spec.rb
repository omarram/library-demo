require 'rails_helper'

RSpec.describe "LoanedBooks", type: :request do
  describe "GET /loaned_books" do
    it "works! (now write some real specs)" do
      get loaned_books_path
      expect(response).to have_http_status(200)
    end
  end
end
