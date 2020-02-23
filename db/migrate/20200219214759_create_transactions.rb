class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :merchant_id, null: false
      t.string :uuid, null: false
      t.string :type, null: false
      t.integer :parent_id, null: false
      t.decimal :amount, precision: 8, scale: 2, null: false
      t.string :status, 
      t.timestamps
    end
  end
end
