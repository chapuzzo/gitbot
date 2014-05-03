require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Gitbot
  class Application < Rails::Application
    # Autoload lib/ folder including all subdirectories
    config.autoload_paths += Dir["#{config.root}/lib", "#{config.root}/lib/**/"]
    require "#{config.root}/lib/gitbot/gitbotlib"
  end
end
