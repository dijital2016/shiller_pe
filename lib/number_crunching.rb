module NumberCrunching

  def decile_shiller_pe(start_date, end_date)
    PriceShiller.where("decile = 10").average(:shiller_pe).to_f.round(2)
  end

  def self.cagr_calcs(start_date,end_date)
    if PriceShiller.find_by(date: end_date)
      start_ps = PriceShiller.find_by(date: start_date)
      end_ps = PriceShiller.find_by(date: end_date)
      start_price = start_ps.sp500_price
      end_price = end_ps.sp500_price
      divs_received = calculate_dividends(start_date, end_date)
      total_return = (((divs_received + end_price) / start_price)-1)*100
    else
      return nil
    end
  end

  def self.cagr_prep(start_date,end_date)
    cagr_update_hash = {}
  end

  def self.calculate_dividends(start_date,end_date)
    PriceShiller.where(date: (start_date+1.month)..end_date).sum(:mo_divs).to_f.round(2)
  end

end
