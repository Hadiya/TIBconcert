
class FacebookController < ApplicationController
     
  def create
    conn=connection
    if(params[:type].present? )
    req= conn.post '/api/back_stage/fb/auth.json', {:back_stage => { :type => params[:type],:email => env['omniauth.auth'].info['email'], :fb_auth_token => env['omniauth.auth'].credentials.token }}
    @m = JSON.parse(req.body)
    redirect_to artist_artist_success_url,:notice => @m["message"]
    else
    req= conn.post '/api/fan/fb/auth.json', {:fan => { :email => env['omniauth.auth'].info['email'], :fb_auth_token => env['omniauth.auth'].credentials.token,:password => env['omniauth.auth'].uid,:ip => request.remote_ip }}
    @m = JSON.parse(req.body)
    redirect_to fans_tib_logina_url,:notice => @m["message"]
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to artist_artist_band_url
  end
end