class ApplicationController < ActionController::Base
  protect_from_forgery
    def connection
      Faraday.new(:url => 'http://pinak.cs:3000') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end
    def current_user
  	  @current= session[:email]
      
    end
end
