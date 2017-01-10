class DataController < ApplicationController

  def index
    @decile_hash = {
      "unassigned": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5,
      "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10 }

    if PriceShiller.count == 0
      PriceShiller.load_all_sp500_prices
      PriceShiller.load_all_shiller_pe_ratios
      PriceShiller.load_all_dividends
      PriceShiller.decile_calculations
      PriceShiller.performance_by_date
      @all_data = PriceShiller.all.order("date DESC")
    else
      @all_data = PriceShiller.all.order("date DESC")
    end
  end

end
