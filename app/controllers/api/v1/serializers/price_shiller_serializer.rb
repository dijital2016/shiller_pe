class PriceShillerSerializer < ActiveModel::Serializer
  attributes :date, :sp500_price, :shiller_pe, :mo_divs, :decile
end
