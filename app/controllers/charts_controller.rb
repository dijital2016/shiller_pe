class ChartsController < ApplicationController
  def index
    @all_data = PriceShiller.all
  end

  def show
  end

end
