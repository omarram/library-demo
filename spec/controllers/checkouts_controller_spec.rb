require 'rails_helper'

RSpec.describe CheckoutsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #check_out" do
    it "returns http success" do
      get :check_out
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #check_in" do
    it "returns http success" do
      get :check_in
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #borrow_list" do
    it "returns http success" do
      get :borrow_list
      expect(response).to have_http_status(:success)
    end
  end

end
