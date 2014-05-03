# Loading accounts config
$accounts = YAML.load_file('config/accounts.yml')
$github = github = Github.new basic_auth: "#{$accounts["github"]["username"]}:#{$accounts["github"]["password"]}"

# Checking config loaded - GITHUG
require 'github_helper'
repos_checking_error = Github::Helper.check_repos($accounts["github"]["repos"],$github)
if repos_checking_error then raise RuntimeError, "#{repos_checking_error}" end
if !$accounts["github"]["repos"] then raise RuntimeError, "#{repos_checking_error}" end