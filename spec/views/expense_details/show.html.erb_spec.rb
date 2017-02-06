require 'rails_helper'

RSpec.describe "expense_details/show", type: :view do
  before(:each) do
    @expense_detail = assign(:expense_detail, ExpenseDetail.create!(
      :amount => "9.99",
      :description => "Description",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Category/)
  end
end
