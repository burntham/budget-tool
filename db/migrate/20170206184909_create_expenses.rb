class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.decimal :total_amount
      t.string :description

      t.timestamps
    end
  end
end
