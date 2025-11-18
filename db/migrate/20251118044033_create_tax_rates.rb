class CreateTaxRates < ActiveRecord::Migration[8.0]
  def change
    create_table :tax_rates do |t|
      t.string :province
      t.decimal :rate

      t.timestamps
    end
  end
end
