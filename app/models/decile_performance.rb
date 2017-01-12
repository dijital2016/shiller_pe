class DecilePerformance < ApplicationRecord

  def self.generate_decile_data
    10.times do |i|
      update_decile_db(i+1)
    end
  end

  def self.update_decile_db(dec)
    @ps = PriceShiller.where(decile: dec)
    DecilePerformance.create(decile: dec, one_mo: one_mo_perf,
    three_mo: three_mo_perf, six_mo: six_mo_perf,
     one_yr: one_yr_perf, three_yr: three_yr_perf,
     five_yr: five_yr_perf, ten_yr: ten_yr_perf)
  end

  def self.one_mo_perf
    @ps.average(:one_mo).round(1)
  end

  def self.three_mo_perf
    @ps.average(:three_mo).round(1)
  end

  def self.six_mo_perf
    @ps.average(:six_mo).round(1)
  end

  def self.one_yr_perf
    @ps.average(:one_yr).round(1)
  end

  def self.three_yr_perf
    @ps.average(:three_yr).round(1)
  end

  def self.five_yr_perf
    @ps.average(:five_yr).round(1)
  end

  def self.ten_yr_perf
    @ps.average(:ten_yr).round(1)
  end

end
