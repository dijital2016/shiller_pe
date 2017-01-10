class PriceShiller < ApplicationRecord
  include Calculations
  validates :date, uniqueness: true
  attr_reader :decile_hash

  enum decile: {
    unassigned: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10
  }

  def self.all_dates
    StandardPoorService.all_sp_prices.map do |line|
      PriceShiller.create!(date: line[0].to_date, sp500_price: line[1], shiller_pe: "", mo_divs: "")
    end
  end

  def self.all_shiller_dates
    ShillerService.all_shiller_prices.map do |line|
      PriceShiller.find_by(date: line[0].to_date).update!(shiller_pe: line[1])
      puts "Updated shiller_pe for #{line[0]}"
    end
  end

  def self.all_divs
    Sp500DividendService.all_divs.map do |line|
      PriceShiller.find_by(date: (line[0].to_date)+1.day).update!(mo_divs: line[1])
      puts "Updated mo_divs for #{line[0]}"

    end
  end

  def convert_decile(word)
    @decile_hash[:word]
  end

  def self.decile_calcs
    PriceShiller.order(:shiller_pe).first(120).each do |line|
      line.one!
    end
    PriceShiller.order(:shiller_pe).offset(120).first(120).each do |line|
      line.two!
    end
    PriceShiller.order(:shiller_pe).offset(240).first(120).each do |line|
      line.three!
    end
    PriceShiller.order(:shiller_pe).offset(360).first(120).each do |line|
      line.four!
    end
    PriceShiller.order(:shiller_pe).offset(480).first(120).each do |line|
      line.five!
    end
    PriceShiller.order(:shiller_pe).offset(600).first(120).each do |line|
      line.six!
    end
    PriceShiller.order(:shiller_pe).offset(720).first(120).each do |line|
      line.seven!
    end
    PriceShiller.order(:shiller_pe).offset(840).first(120).each do |line|
      line.eight!
    end
    PriceShiller.order(:shiller_pe).offset(960).first(120).each do |line|
      line.nine!
    end
    PriceShiller.order(:shiller_pe).offset(1080).each do |line|
      line.ten!
    end
  end

  def self.by_date(date)
    PriceShiller.find_by(date: date).update(
    one_mo:
    )
  end

  private

  def price_shiller_params
    params.require(:price_shiller).permit(:date, :sp500_price, :shiller_pe, :mo_divs, :decile)
  end

end
