class CreateExpenseDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_details do |t|
      t.decimal :amount
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
