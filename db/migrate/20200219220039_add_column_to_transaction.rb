class AddColumnToTransaction < ActiveRecord::Migration[6.0]
  def change
  	add_column :merchants, :uuid, :uuid, default: 'gen_random_uuid()'
  end
end
