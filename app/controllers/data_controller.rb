class DataController < ApplicationController

  def index
    old_logger = ActiveRecord::Base.logger
    ActiveRecord::Base.logger = nil
    @decile_hash = {
      "unassigned": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5,
      "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10 }
    @total_shiller_average = PriceShiller.average(:shiller_pe).to_f.round(1)

    if PriceShiller.count == 0
      PriceShiller.load_all_sp500_prices
      PriceShiller.load_all_shiller_pe_ratios
      PriceShiller.load_all_dividends
      PriceShiller.set_deciles
      @all_data = PriceShiller.all.order("date DESC")
    else
      @all_data = PriceShiller.all.order("date DESC")
    end
    PriceShiller.performance_by_date
  end

end
