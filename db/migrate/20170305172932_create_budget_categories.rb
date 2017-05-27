class CreateBudgetCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_categories do |t|
      t.string :name
      t.string :group

      t.timestamps
    end
  end
end
