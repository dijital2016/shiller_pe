class Api::V1::DataController < ApplicationController
  require_relative './serializers/basic_chart_serializer'

  def index
    @price_shillers = PriceShiller.where.not(mo_divs: nil).first(1300)
    render json: @price_shillers, Serializer: BasicChartSerializer
  end

  def show
    @price_shillers = PriceShiller.where.not(mo_divs: nil).first(1300)
    render json: @price_shillers, Serializer: BasicChartSerializer
  end

end
