class Api::V1::DataController < ApplicationController
  def index
    price_shillers = PriceShiller.all
    render json: price_shillers, Serializer: PriceShillerSerializer
    byebug
  end
end
