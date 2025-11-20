class RenameProvinceInUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :province, :province_id
    change_column :users, :province_id, :integer 
  end
end
