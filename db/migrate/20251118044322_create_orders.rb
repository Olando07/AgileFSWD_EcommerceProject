class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :user_id
      t.integer :item_num
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
