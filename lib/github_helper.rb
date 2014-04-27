module Github
  module Helper
    # Check if the account is valid
    def Helper.client_valid? (client)
      begin
        client.repos.all
      rescue 
        return false
      end
      return true
    end

    # Check if repos are valid
    def Helper.check_repos (check_repos, client)
      invalid_error = nil
      check_repos.each do |repo|
        begin
          client.repos.find repo["org_name"], repo["name"]
        rescue Github::Error::NotFound => e
          invalid_error = e
          break
        end
      end
      return invalid_error
    end
  end
end