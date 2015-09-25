require "rails_helper"

RSpec.describe LoanedBooksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/loaned_books").to route_to("loaned_books#index")
    end

    it "routes to #new" do
      expect(:get => "/loaned_books/new").to route_to("loaned_books#new")
    end

    it "routes to #show" do
      expect(:get => "/loaned_books/1").to route_to("loaned_books#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/loaned_books/1/edit").to route_to("loaned_books#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/loaned_books").to route_to("loaned_books#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/loaned_books/1").to route_to("loaned_books#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/loaned_books/1").to route_to("loaned_books#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loaned_books/1").to route_to("loaned_books#destroy", :id => "1")
    end

  end
end
