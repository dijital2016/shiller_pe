class DecilePerformanceController < ApplicationController
  def index
    if DecilePerformance.count == 0
      DecilePerformance.generate_decile_data
      @sp_averages = 1
      @performance_by_decile = DecilePerformance.all
    else
      @sp_averages = 1
      @performance_by_decile = DecilePerformance.all
    end
  end
end
