require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Band
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #CHANGED
    config.generators do |g|
      # Use Rspec
      g.test_framework  :rspec, fixture: false
      # Use Factory girl
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
