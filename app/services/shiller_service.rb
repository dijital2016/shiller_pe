class ShillerService

    def index
    end

    def self.all_shiller_prices
      response = Faraday.get("https://www.quandl.com/api/v3/datasets/MULTPL/SHILLER_PE_RATIO_MONTH?start_date=1916-11-01&api_key=CRusVu2YyQN9Kz7UJppf")
      response_array = JSON.parse(response.body, symbolize: true)["dataset"]["data"]
    end
  end
