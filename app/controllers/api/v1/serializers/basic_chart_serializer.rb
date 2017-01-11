class BasicChartSerializer < ActiveModel::Serializer
  attributes :date, :sp500_price, :shiller_pe
end
