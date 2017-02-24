class ChartsController < ApplicationController
  
  def index
    @all_data = PriceShiller.all.order("date ASC")
  end

end
