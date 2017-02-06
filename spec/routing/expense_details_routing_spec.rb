require "rails_helper"

RSpec.describe ExpenseDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/expense_details").to route_to("expense_details#index")
    end

    it "routes to #new" do
      expect(:get => "/expense_details/new").to route_to("expense_details#new")
    end

    it "routes to #show" do
      expect(:get => "/expense_details/1").to route_to("expense_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/expense_details/1/edit").to route_to("expense_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/expense_details").to route_to("expense_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/expense_details/1").to route_to("expense_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/expense_details/1").to route_to("expense_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/expense_details/1").to route_to("expense_details#destroy", :id => "1")
    end

  end
end
