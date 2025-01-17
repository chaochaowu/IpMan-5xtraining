require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module IpMan5xtraining
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.time_zone = "Taipei"

    # To set the default allowed tags or attributes that aren’t whitelisted across application
    config.action_view.sanitized_allowed_tags = ['strong', 'em', 'a']
    config.action_view.sanitized_allowed_attributes = ['href', 'title']

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # where the I18n library should search for translation files.
    # config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.default_locale = :en

    # default lacale when translation missing
    config.i18n.fallbacks = true

    config.exceptions_app = self.routes
  end
end
