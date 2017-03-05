class AddExpenseToBudget < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :budget_id, :integer
  end
end
