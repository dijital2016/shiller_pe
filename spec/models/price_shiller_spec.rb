require 'rails_helper'

RSpec.describe PriceShiller, type: :model do
  it "#all_dates" do
    response = PriceShiller.load_all_sp500_prices
    first_line = response.first

    expect(first_line).to respond_to(:date)
    expect(first_line).to respond_to(:sp500_price)
    expect(first_line).to respond_to(:shiller_pe)
    expect(first_line).to respond_to(:mo_divs)
    expect(first_line).to respond_to(:decile)
  end

  it "calculates performance by date for all timeframes" do
    start_date = "1950-01-01"
    end_date = "1950-03-01"
    start_data = PriceShiller.new(date: start_date, sp500_price: 1000.00, shiller_pe: 20.0, mo_divs: 10.00)
    data_2 = PriceShiller.new(date: "1950-02-01", sp500_price: 1100.00, shiller_pe: 22.0, mo_divs: 11.00)
    data_3 = PriceShiller.new(date: "1950-03-01", sp500_price: 1050.00, shiller_pe: 23.0, mo_divs: 11.50)
    end_data = PriceShiller.new(date: end_date, sp500_price: 1200.00, shiller_pe: 24.0, mo_divs: 12.00)
    PriceShiller.abs_performance_by_date

    expect(start_data.one_mo).to eq(0.11)
    expect(start_data.three_mo).to eq(0.22)
  end
end
