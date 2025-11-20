class RemoveRedundantIdColumns < ActiveRecord::Migration[8.0]
  def change
    remove_column :Orders, :order_id, :integer
    remove_column :Users, :user_id, :integer
  end
end
