
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "503806902990007","62f4fdf3c1e048d1d3a2d44787c085bd",{:scope => 'email,offline_access'}
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],{:scope => 'email,offline_access'}
end

