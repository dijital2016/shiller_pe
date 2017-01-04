class Sp500DividendService

  def index
  end

  def self.all_divs
    response = Faraday.get("https://www.quandl.com/api/v3/datasets/MULTPL/SP500_DIV_MONTH.json?start_date=1916-11-30&api_key=CRusVu2YyQN9Kz7UJppf")
    @sp_500_response_array = JSON.parse(response.body, symbolize: true)["dataset"]["data"]
  end
end
