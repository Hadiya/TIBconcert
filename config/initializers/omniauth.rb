
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "340501396062129","c69cf9f0eb873a1bf7835a654a4b38cf",{:scope => 'email,offline_access'}
end

