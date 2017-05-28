class AddCategoryIdToCategoryDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :budget_category_details, :budget_category_id, :integer
  end
end
