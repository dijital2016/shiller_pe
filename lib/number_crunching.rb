module NumberCrunching

  def decile_shiller_pe(start_date, end_date)
    PriceShiller.where("decile = 10").average(:shiller_pe).to_f.round(2)
  end

  def cagr_calcs(start_date,end_date)
    start_price = PriceShiller.find_by(date: start_date).sp500_price
    end_price = PriceShiller.find_by(date: end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 365.25
    (total_return ** ( 1 / years_held )) - 1
  end

end
