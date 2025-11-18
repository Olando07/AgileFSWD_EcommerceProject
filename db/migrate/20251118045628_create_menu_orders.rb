class CreateMenuOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :menu_orders do |t|
      t.integer :order_id
      t.integer :item_num

      t.timestamps
    end
  end
end
