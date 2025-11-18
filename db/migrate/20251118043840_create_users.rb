class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name
      t.string :password
      t.string :email
      t.string :street_address
      t.string :province
      t.boolean :is_admin

      t.timestamps
    end
  end
end
