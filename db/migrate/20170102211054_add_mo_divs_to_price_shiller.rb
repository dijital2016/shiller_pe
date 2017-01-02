class AddMoDivsToPriceShiller < ActiveRecord::Migration[5.0]
  def change
    add_column :price_shillers, :mo_divs, :decimal
  end
end
