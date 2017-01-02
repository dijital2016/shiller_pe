class DataController < ApplicationController
  def index
    if PriceShiller.count == 0
      PriceShiller.all_dates
      PriceShiller.all_shiller_dates
      PriceShiller.all_divs
      @all_data = PriceShiller.all.order("date DESC")
    else
      @all_data = PriceShiller.all.order("date DESC")
    end
  end

end
