class CreateMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :description
      t.string :email
      t.integer :status
      t.float :total

      t.timestamps
     
    end
  end
end
