class Api::V1::DataController < ApplicationController
  require_relative './serializers/price_shiller_serializer'

  def index
    @price_shillers = PriceShiller.all.last(3)
    # render json: @price_shillers, Serializer: PriceShillerSerializer
    render json: @price_shillers
  end
end
