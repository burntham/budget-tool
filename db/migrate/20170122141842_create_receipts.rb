class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.integer :total
      t.string :description

      t.timestamps
    end
  end
end
