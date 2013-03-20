module UserOmniauth
  def apply_omniauth(omniauth)
       data = omniauth.extra.raw_info
    self.email = self.omniauth_email(omniauth,data) if email.blank?
   
  end
  
  def omniauth_email(omniauth,data)
   
    omniauth['provider'] == 'facebook'
      data.email
  end