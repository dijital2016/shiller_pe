class CreatePriceShillers < ActiveRecord::Migration[5.0]
  def change
    create_table :price_shillers do |t|
      t.date :date
      t.decimal :sp500_price
      t.decimal :shiller_pe
      t.decimal :mo_divs
      t.integer :decile, default: nil

      t.timestamps
    end
  end
end
