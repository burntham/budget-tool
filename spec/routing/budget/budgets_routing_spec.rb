require "rails_helper"

RSpec.describe Budget::BudgetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/budget/budgets").to route_to("budget/budgets#index")
    end

    it "routes to #new" do
      expect(:get => "/budget/budgets/new").to route_to("budget/budgets#new")
    end

    it "routes to #show" do
      expect(:get => "/budget/budgets/1").to route_to("budget/budgets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/budget/budgets/1/edit").to route_to("budget/budgets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/budget/budgets").to route_to("budget/budgets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/budget/budgets/1").to route_to("budget/budgets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/budget/budgets/1").to route_to("budget/budgets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/budget/budgets/1").to route_to("budget/budgets#destroy", :id => "1")
    end

  end
end
