# Loading accounts config
$accounts = YAML.load_file('config/accounts.yml')

# GITHUB
require 'github_helper'
$github = github = Github.new basic_auth: "#{$accounts["github"]["username"]}:#{$accounts["github"]["password"]}"
repos_checking_error = Github::Helper.check_repos($accounts["github"]["repos"],$github)
if repos_checking_error then raise RuntimeError, "#{repos_checking_error}" end
if !$accounts["github"]["repos"] then raise RuntimeError, "#{repos_checking_error}" end


# GIPHY
if ($accounts["giphy"]["api_key"])
  Giphy::Configuration.configure do |config|
  config.version = $accounts["giphy"]["version"]
  config.api_key = $accounts["giphy"]["api_key"]
  end
end