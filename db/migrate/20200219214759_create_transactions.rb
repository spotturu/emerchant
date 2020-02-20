class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :uuid
      t.float :amount
      t.string :status

      t.timestamps
      
    end
  end
end
