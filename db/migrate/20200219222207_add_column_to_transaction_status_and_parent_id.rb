class AddColumnToTransactionStatusAndParentId < ActiveRecord::Migration[6.0]
  def change
  	add_column :transactions, :type, :integer
  	add_column :transactions, :parent_id, :integer
  end
end