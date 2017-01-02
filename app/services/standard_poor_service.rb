class StandardPoorService

  def index
  end

  def self.all_sp_prices
    response = Faraday.get("https://www.quandl.com/api/v3/datasets/MULTPL/SP500_INFLADJ_MONTH.json?start_date=1916-11-01&api_key=CRusVu2YyQN9Kz7UJppf")
    response_array = JSON.parse(response.body, symbolize: true)["dataset"]["data"]
  end
end
