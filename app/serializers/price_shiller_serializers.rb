class PriceShillerSerializer < ActiveModel::Serializer
  attributes :date, :sp500_price, :shiller_pe, :decile
end
