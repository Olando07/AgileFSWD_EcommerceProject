class AddSnapshotDataToOrderHistory < ActiveRecord::Migration[8.0]
  def change
    add_column :order_histories, :item_name, :string
    add_column :order_histories, :item_price, :decimal, precision: 10, scale: 2
    add_column :order_histories, :quantity, :integer
    add_column :order_histories, :total, :decimal, precision: 10, scale: 2
  end
end
