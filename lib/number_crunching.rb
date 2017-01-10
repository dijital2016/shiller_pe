module NumberCrunching

  def decile_shiller_pe(start_date, end_date)
    PriceShiller.where(:date => start_date..end_date).average(:shiller_pe).to_f.round(2)
    ##PriceShiller.order(:shiller_pe).offset(120).limit(120) ##takes 2nd decile
  end

  def one_mo_cagr(date) #date comes in as a string
    start_date = date.to_date
    end_date = (date.to_date + 1.month)
    cagr_calcs(start_date, end_date)
  end

def three_mo_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 3.months)
    cagr_calcs(start_date, end_date)
  end

  def six_mo_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 6.months)
    cagr_calcs(start_date, end_date)
  end

  def one_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 1.year)
    cagr_calcs(start_date, end_date)
  end

  def three_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 3.years)
    cagr_calcs(start_date, end_date)
  end

  def five_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 5.years)
    cagr_calcs(start_date, end_date)
  end

  def ten_yr_cagr(date)
    start_date = date.to_date
    end_date = (date.to_date + 10.years)
    cagr_calcs(start_date, end_date)
  end

  def cagr_calcs(start_date,end_date)
    start_price = PriceShiller.find_by(start_date).sp500_price
    end_price = PriceShiller.find_by(end_date).sp500_price
    divs_received = PriceShiller.where(date: start_date..end_date).sum(:mo_divs).to_f.round(2)
    total_return = (divs_received + end_price) / start_price
    years_held = (end_date - start_date) / 60 / 60 / 24 / 365.25
    (total_return ** ( 1 / years_held )) - 1
  end

end
