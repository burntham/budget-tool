class CreateBudgetBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_budgets do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
