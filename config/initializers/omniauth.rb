
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "172721912882206","479145601c5a34d7f5aba82e062be9fe",{:scope => 'email,offline_access'}
end

