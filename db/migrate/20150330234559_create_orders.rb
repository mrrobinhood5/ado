class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :docnum
      t.string :status
      t.string :user_id
      
      t.timestamps
    end
  end
end
