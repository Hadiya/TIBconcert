class SessionsController < ApplicationController
def new
end
def create
 	conn = connection
  req= conn.post '/api/fan/sign_in.json', {:fan => { :email => params[:email],:password => params[:password] }}
  @r = JSON.parse(req.body)
  @a=req.body.include?"404"
 	if (@a == true)
     flash[:error] = @r["errors"]
    redirect_to fans_tib_login_url
  end
  if (@a == false)
    flash[:success] = @r["message"]
    redirect_to fans_tib_logina_url
    unless(FanToken.find_by_user_email(params[:email]).present?)
    token = cookies.permanent[:remember_token] = SecureRandom.hex 
    FanToken.fantoken token,params[:email]
    session[:email] = token 
    end
    i = FanToken.find_by_user_email(params[:email])
    session[:email]=params[:email]
    cookies.permanent[:remember_token] = i.remember_token
  end

end
def destroy
 	session[:email] = nil
  cookies.delete(:remember_token)
 	redirect_to fans_tib_login_url
end
end


