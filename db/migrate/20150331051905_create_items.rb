class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nsn
      t.string :nomen
      t.string :size
      t.integer :qty_auth
      t.integer :qty_order
      t.references :order, index: true
      
      t.timestamps
    end
  end
end
