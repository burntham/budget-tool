require 'rails_helper'

RSpec.describe "expense_details/edit", type: :view do
  before(:each) do
    @expense_detail = assign(:expense_detail, ExpenseDetail.create!(
      :amount => "9.99",
      :description => "MyString",
      :category => "MyString",
      :expense_id => 1
    ))
  end

  it "renders the edit expense_detail form" do
    render

    assert_select "form[action=?][method=?]", expense_detail_path(@expense_detail), "post" do

      assert_select "input#expense_detail_amount[name=?]", "expense_detail[amount]"

      assert_select "input#expense_detail_description[name=?]", "expense_detail[description]"

      assert_select "input#expense_detail_category[name=?]", "expense_detail[category]"
    end
  end
end
