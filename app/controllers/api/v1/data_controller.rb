class Api::V1::DataController < ApplicationController
  require_relative './serializers/price_shiller_serializer'

  def index
    @price_shillers = PriceShiller.all
    render json: @price_shillers, Serializer: PriceShillerSerializer
  end
end
