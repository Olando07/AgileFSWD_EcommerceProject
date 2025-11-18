class CreateOrderHistories < ActiveRecord::Migration[8.0]
  def change
    create_table :order_histories do |t|
      t.integer :order_id
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
