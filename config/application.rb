require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MangXaHoi
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
	config.assets.enabled = true
	config.public_file_server.enabled = true
	config.cache_classes = true
	config.assets.compile = true
	config.assets.digest = true

  end
end
