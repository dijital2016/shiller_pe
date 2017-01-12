require 'rails_helper'

describe Api::V1::DataController do
  it "price_shillers index" do
    price_shiller1 = PriceShiller.create(date: "2016-12-25".to_date, sp500_price: 19999.99, shiller_pe: "18.88", mo_divs: "7.77")
    price_shiller2 = PriceShiller.create(date: "2015-01-01".to_date, sp500_price: 22222.22, shiller_pe: "15.55", mo_divs: "44.44")

    get :index
    price_shillers = JSON.parse(response.body, symbolize_names: true)
    ps = price_shillers.first

    expect(price_shillers.count).to eq(2)
    expect(ps.length).to eq(15)
    expect(ps).to have_key(:date)
    expect(ps).to have_key(:sp500_price)
    expect(ps).to have_key(:shiller_pe)
    expect(ps).to have_key(:mo_divs)
    expect(ps).to have_key(:decile)
    expect(response).to be_success
  end
end
