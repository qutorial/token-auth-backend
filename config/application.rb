require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BackendArch
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.api_only = true
    config.cors = config_for(:cors)
    config.action_mailer.default_url_options = { host: 'vulnswatch.com', protocol: 'https' }
  end
end
