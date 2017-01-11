class DecilePerformance < ApplicationRecord
  def initialize(decile)
    @ps = PriceShiller.where("decile == '#{decile}'")

  end

  def one_mo
    @ps.average(:one_mo)
  end

  def three_mo
    @ps.average(:three_mo)
  end

  def six_mo
    @ps.average(:six_mo)
  end

  def one_yr
    @ps.average(:one_yr)
  end

  def three_yr
    @ps.average(:three_yr)
  end

  def five_yr
    @ps.average(:five_yr)
  end

  def ten_yr
    @ps.average(:ten_yr)
  end


end
