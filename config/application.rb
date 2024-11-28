require_relative "boot"

require "rails/all"

ActiveSupport::Deprecation.behavior = [:stderr, :log]


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AvoxBack
  class Application < Rails::Application
    config.api_only = true
    
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # CORS configuration
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'  # Substitua pelo domínio do frontend em produção
        resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options]
      end
    end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
