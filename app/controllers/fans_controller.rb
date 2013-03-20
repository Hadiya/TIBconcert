class FansController < ApplicationController
  
  def create
    conn = connection
 req = conn.post '/api/fan/registration.json',{ :fan => {:email =>params[:email],:city=> params[:city],:country => params[:country],:dob => params[:dob],:password=> params[:password],:first_name => params[:first_name],:last_name => params[:last_name],:fan_name => params[:fan_name],:zip => params[:zip] },:ip => {:ipa => request.remote_ip}}
   @r = JSON.parse(req.body)
   @b=req   
   @a=req.body.include?"404"
 if (@a == true)
    flash[:error] = @r["errors"]
    redirect_to fans_new_path
  end
  end
  def new  
  end
  def tib_login
     if(current_user.present?)
        flash[:error]="Please you are already logined "
        redirect_to fans_tib_logina_url
     end 
  end
  def tib_logina
  end
  def exam
    conn = connection
     req =conn.delete '/api/fan/sign_out.json',{:fan => {:email => params[:email]}}
     @m = JSON.parse(req.body)
     @a=req.body.include?"404"
   if (@a == true) 
    flash[:message]= @m["message"]
    redirect_to fans_tib_logina_path
  end
  if (@a == false)
    flash[:error]= @m[:errors] 
    redirect_to fans_tib_logina_path
  end
  end   
end