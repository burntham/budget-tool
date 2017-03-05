class CreateBudgetCategoryDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_category_details do |t|
      t.string :name
      t.decimal :budgeted_amount
      t.integer :budget_id

      t.timestamps
    end
  end
end
