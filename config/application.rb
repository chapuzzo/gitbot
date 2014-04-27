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

    # Loading accounts config
    $accounts = YAML.load_file('config/accounts.yml')
    $github = github = Github.new basic_auth: "#{$accounts["github"]["username"]}:#{$accounts["github"]["password"]}"

    # Checking config loaded - GITHUG
    require 'github_helper'
    repos_checking_error = Github::Helper.check_repos($accounts["github"]["repos"],$github)
    if repos_checking_error then raise RuntimeError, "#{repos_checking_error}" end
    if !$accounts["github"]["repos"] then raise RuntimeError, "#{repos_checking_error}" end
  end
end
