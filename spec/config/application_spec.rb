require "spec_helper"

describe Gitbot::Application, 'Application configuration' do
  context "GITHUB" do
  	github_account = $accounts["github"]
  	before(:all) do
    	github_account["username"] = "pololo"
    	github_account["password"] = "pilili"
    	github_account["repos"] = nil
  	end

  	it 'should exit if no repos setup' do
		expect{Gitbot::Application}.to raise_error(RuntimeError)
	end

	it 'should exit if no user or password' do
		
	end


	# SHOULD
	# - Exit if no account
	# - Exit if no repos
	# - Exit if no valid account
	
  end
end