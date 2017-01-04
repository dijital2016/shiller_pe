class ShillerService

    def index
    end

    def self.all_shiller_prices
      response = Faraday.get("https://www.quandl.com/api/v3/datasets/MULTPL/SHILLER_PE_RATIO_MONTH?start_date=1916-11-01&api_key=CRusVu2YyQN9Kz7UJppf")
      @shiller_response_array = JSON.parse(response.body, symbolize: true)["dataset"]["data"]
    end

    def shiller_pes ## this is for the shiller_pe array to generate the highstock charts
      @shiller_response_array ||= all_sp_prices
      @shiller_response_array.map do |element|
        element[1]
      end
    end

  end
