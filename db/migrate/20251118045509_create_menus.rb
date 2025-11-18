class CreateMenus < ActiveRecord::Migration[8.0]
  def change
    create_table :menus do |t|
      t.integer :item_num
      t.string :item_details
      t.decimal :cost
      t.boolean :with_drink
      t.boolean :with_side

      t.timestamps
    end
  end
end
