# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@decile_hash = {
  "unassigned": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5,
  "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10 }

PriceShiller.load_all_sp500_prices
PriceShiller.load_all_shiller_pe_ratios
PriceShiller.load_all_dividends
PriceShiller.set_deciles
PriceShiller.abs_performance_by_date
