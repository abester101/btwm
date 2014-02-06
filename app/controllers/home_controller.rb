class HomeController < ApplicationController
  def index
    	@main_name = "Beat the Weather Man"

      ForecastIO.configure do |configuration|
        configuration.api_key = '5ad9fa126241fffb15fe3fd4d88ff96e'
      end
      forecast = ForecastIO.forecast(37.7833, -122.4167)
      @weather = {
        termperature: forecast.currently.apparentTemperature,
      }
    end
  
    def register
      username = params[:username]
      password = params[:password]
      Rails.logger.debug("Registering with Data: [username: #{username}, password: #{password}]")
      User.create(username: username, password: password)
      render :js => "window.location = '/home/login?just_reg=true'"
    end
    
    def login
      
    end
    
    def action_login
      username = params[:username]
      password = params[:password]
      
      user = User.find_by(name: :username)
      if user
      else
      end
    end
    
    def check_exist
    end
    
end
