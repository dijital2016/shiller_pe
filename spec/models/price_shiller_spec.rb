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
    first_date.

    expect(first_date.one_mo).to eq(0.13)
  end
end
