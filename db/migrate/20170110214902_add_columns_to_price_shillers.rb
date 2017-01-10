class AddColumnsToPriceShillers < ActiveRecord::Migration[5.0]
  def change
    add_column :price_shillers, :one_mo, :decimal
    add_column :price_shillers, :three_mo, :decimal
    add_column :price_shillers, :six_mo, :decimal
    add_column :price_shillers, :one_yr, :decimal
    add_column :price_shillers, :three_yr, :decimal
    add_column :price_shillers, :five_year, :decimal
    add_column :price_shillers, :ten_yr, :decimal
  end
end
