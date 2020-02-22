class CreateMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :merchants do |t|
      t.string :name, null: false
      t.string :description
      t.string :email, null: false
      t.integer :status, null: false
      t.float :total_transaction_sum, default: 0.00
      t.timestamps
     
    end
  end
end
