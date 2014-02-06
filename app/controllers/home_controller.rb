require 'forecast_io'
class HomeController < ApplicationController
  def index
    ForecastIO.configure do |configuration|
      configuration.api_key = '5ad9fa126241fffb15fe3fd4d88ff96e'
    end
    forecast = ForecastIO.forecast(37.7833, -122.4167)
    @weather = {
      termperature: forecast.currently.apparentTemperature,
    }
  end
end
