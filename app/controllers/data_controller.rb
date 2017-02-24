class DataController < ApplicationController

  def index
    @total_shiller_average = PriceShiller.average(:shiller_pe).to_f.round(1)
    @all_data = PriceShiller.all.order("date DESC")
  end

end
