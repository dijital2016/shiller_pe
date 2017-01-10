class CreateDecilePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :decile_performances do |t|
      t.integer :decile
      t.decimal :one_mo
      t.decimal :three_mo
      t.decimal :six_mo
      t.decimal :one_yr
      t.decimal :three_yr
      t.decimal :five_yr
      t.decimal :ten_yr

      t.timestamps
    end
  end
end
