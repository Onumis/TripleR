Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, Rails.application.secrets.facebook_key,
                      Rails.application.secrets.facebook_secret
end
OmniAuth.config.logger = Rails.logger
