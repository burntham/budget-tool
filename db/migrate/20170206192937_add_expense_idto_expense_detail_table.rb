class AddExpenseIdtoExpenseDetailTable < ActiveRecord::Migration[5.0]
  def up
    add_column :expense_details, :expense_id, :integer
  end
end
