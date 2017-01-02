module Calculations
  def decile_shiller_pe(start, end)
    PriceShiller.where(:date => start..end).average(:shiller_pe).to_f.round(2)
  end

  def three_mo_cagr(date)
    start_date = date
    end_date = (date + 3.months)
    start_price = PriceShiller.find_by(date.to_date).sp500_price
    #total_return = (end_price + divs received)/start_price
  end
end
