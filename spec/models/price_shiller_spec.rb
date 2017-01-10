require 'rails_helper'

RSpec.describe PriceShiller, type: :model do
  it "#all_dates" do
    response = PriceShiller.all_dates
    first_line = response.first

    expect(first_line).to respond_to(:date)
    expect(first_line).to respond_to(:sp500_price)
    expect(first_line).to respond_to(:shiller_pe)
    expect(first_line).to respond_to(:mo_divs)
    expect(first_line).to respond_to(:decile)
  end

  it "calculates performance by date for all timeframes" do
    first_date = PriceShiller.first
    a = first_date.one_mo_cagr(first_date.date)
    b = first_date.three_mo_cagr(first_date.date)
    c = first_date.six_mo_cagr(first_date.date)
    d = first_date.one_yr_cagr(first_date.date)
    e = first_date.three_yr_cagr(first_date.date)
    f = first_date.five_yr_cagr(first_date.date)
    g = first_date.ten_yr_cagr(first_date.date)

    expect(a).to eq(0.11)
    expect(b).to eq(0.22)
    expect(c).to eq(0.33)
    expect(d).to eq(0.44)
    expect(e).to eq(0.55)
    expect(f).to eq(0.66)
    expect(g).to eq(0.77)
  end
end
