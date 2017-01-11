class DecilePerformance < ApplicationRecord
  def initialize(decile)
    @ps = PriceShiller.where("decile == '#{decile}'")

  end

  def one_mo(decile)

    @ps.update!.average(:one_mo)
  end

  def three_mo(decile)
    PriceShiller.where(decile: decile).average(:three_mo)
  end

  def one_mo(decile)
    PriceShiller.where(decile: decile).average(:six_mo)
  end

  def one_mo(decile)
    PriceShiller.where(decile: decile).average(:one_mo)
  end

  def one_mo(decile)
    PriceShiller.where(decile: decile).average(:one_mo)
  end

  def one_mo(decile)
    PriceShiller.where(decile: decile).average(:one_mo)
  end

  def one_mo(decile)
    PriceShiller.where(decile: decile).average(:one_mo)
  end


end
