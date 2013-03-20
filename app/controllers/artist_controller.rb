class ArtistController < ApplicationController
    def artist_band
    end
    def artist_success
    end	
    def create  
      redirect_to :controller => 'facebook',:action => 'create', :provider => "facebook",:type =>params[:type] 
    end
end
