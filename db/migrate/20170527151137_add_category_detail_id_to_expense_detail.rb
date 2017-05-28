class AddCategoryDetailIdToExpenseDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :expense_details, :budget_category_detail_id, :integer
  end
end
