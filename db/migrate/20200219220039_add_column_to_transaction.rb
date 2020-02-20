class AddColumnToTransaction < ActiveRecord::Migration[6.0]
  def change
  	add_reference :transactions, :merchant, foreign_key: true
  end
end
