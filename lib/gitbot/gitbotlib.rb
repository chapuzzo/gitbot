require_relative 'bots/bot'
require_relative 'bots/imagebot'
require_relative 'bots/gifbot'

module GitbotLib
  # Read the headers and detect if type if comment
  # Then get repo bots
  # Call repo bots methods to get the message
  # Report the message to the original repo

  # Parse the request getting comment/s to be
  def self.parse(headers, json_body)
    github_event = request.headers["X-Github-Event"]
    hub_signature = request.headers["X-Hub-Signature"]
    github_delivery = request.headers["X-Github-Delivery"]

  end




  # Returns an array with bots
  # @param request Json sent from Github
  # @return Array with bot classes ( in String format)
  def self.bots_from_request(request)
    #Depends on:
    # Github_event
    # Bot allowed by the repo in settings

  end

  # Report a given comment to the repo
  # @param comment String with the comment to be reported
  # @param repo String with the repo where the comment is going to be reported
  def self.report_comment(comment, repo)


  end
end