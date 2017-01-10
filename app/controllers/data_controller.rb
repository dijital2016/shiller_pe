class DataController < ApplicationController

  def index
    @decile_hash = {
      "unassigned": 0,
      "one": 1,
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9,
      "ten": 10
    }

    if PriceShiller.count == 0
      PriceShiller.all_dates
      PriceShiller.all_shiller_dates
      PriceShiller.all_divs
      PriceShiller.decile_calcs
      PriceShiller.performance_by_date
      @all_data = PriceShiller.all.order("date DESC")
    else
      @all_data = PriceShiller.all.order("date DESC")
    end
  end

end
