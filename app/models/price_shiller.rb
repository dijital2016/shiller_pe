class PriceShiller < ApplicationRecord
  validates :date, uniqueness: true

  def self.all_dates
    StandardPoorService.all_sp_prices.map do |line|
      PriceShiller.create!(date: line[0].to_date, sp500_price: line[1], shiller_pe: "", mo_divs: "")
    end
  end

  def self.all_shiller_dates
    ShillerService.all_shiller_prices.map do |line|
      PriceShiller.find_by(date: line[0].to_date).update!(shiller_pe: line[1])
    end
  end

  def self.all_divs
    Sp500DividendService.all_divs.map do |line|
      PriceShiller.find_by(date: (line[0].to_date)+1.day).update!(mo_divs: line[1])
    end
  end

end
