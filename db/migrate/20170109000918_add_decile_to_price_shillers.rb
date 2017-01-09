class AddDecileToPriceShillers < ActiveRecord::Migration[5.0]
  def change
    add_column :price_shillers, :decile, :string
  end
end
