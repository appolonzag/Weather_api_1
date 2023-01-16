module AccuWeather
  class UpdateDataService
    require 'net/http'
    require 'uri'

    API_KEY = ENV['API_KEY'].freeze
    private_constant :API_KEY
    LOCATION = "Batumi".freeze
    BASE_URL = "http://api.weatherapi.com".freeze

    def self.call
      new.call
    end

    def call
      update_current
    end

    private

    def update_current
      uri = URI.parse ("#{BASE_URL}/v1/forecast.json?key=#{API_KEY} &q=#{LOCATION}&days=1&aqi=no&alerts=no")
      response = Net::HTTP.get_response(uri)
      response_parsed_current = JSON.parse(response.body)

      Current.last.update!(
        :city => response_parsed_current["location"]["name"],
        :country => response_parsed_current["location"]["country"],
        :date => response_parsed_current["current"]['last_updated'],
        :temperature => response_parsed_current["current"]["temp_c"],
        :epoch_time => response_parsed_current["current"]["last_updated_epoch"]
        )
    end
  end
end
