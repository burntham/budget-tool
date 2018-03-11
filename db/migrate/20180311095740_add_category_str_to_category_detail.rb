class AddCategoryStrToCategoryDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :budget_category_details, :category, :string
    remove_column :budget_category_details, :budget_category_id
  end
end
