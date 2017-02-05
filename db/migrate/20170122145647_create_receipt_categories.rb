class CreateReceiptCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :receipt_categories do |t|
      t.belongs_to :receipt
      t.integer :amount, index: true

      t.timestamps
    end
  end
end
