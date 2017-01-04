module Calculations

  def decile_shiller_pe(start, end)
    PriceShiller.where(:date => start..end).average(:shiller_pe).to_f.round(2)
  end

  def three_mo_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 3.months)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    three_mo_cagr = (total_return ** ( 1 / years_held )) - 1
  end

  def six_mo_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 6.months)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    six_mo_cagr = (total_return ** ( 1 / years_held )) - 1
  end

  def one_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 1.year)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    one_yr_cagr = (total_return ** ( 1 / years_held )) - 1
  end

  def three_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 3.years)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    three_yr_cagr = (total_return ** ( 1 / years_held )) - 1
  end

  def five_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 5.years)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    five_yr_cagr = (total_return ** ( 1 / years_held )) - 1
  end

  def ten_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 10.years)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    ten_yr_cagr = (total_return ** ( 1 / years_held )) - 1
  end

end
