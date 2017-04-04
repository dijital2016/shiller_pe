class ChartsController < ApplicationController

  def index
    @all_data = PriceShiller.all.order("date ASC")
  end

  def show
    if DecilePerformance.count == 0
      DecilePerformance.generate_decile_data
    end

    @sp_averages = 1
    @performance_by_decile = DecilePerformance.all
  end

end
