require 'rails_helper'

RSpec.describe "Budget::Budgets", type: :request do
  describe "GET /budget_budgets" do
    it "works! (now write some real specs)" do
      get budget_budgets_path
      expect(response).to have_http_status(200)
    end
  end
end
