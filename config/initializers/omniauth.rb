
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, "523800507659029","6c5f861a11ea7bbb82f5afd08305f3d6",{:scope => 'email,offline_access'}
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'] #,:scope => 'email,offline_access'
end

