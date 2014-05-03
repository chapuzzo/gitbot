require_relative 'bots/bot'
require_relative 'bots/imagebot'
require_relative 'bots/gifbot'

module GitbotLib
  def self.parse(headers, json_body)
    github_event = request.headers["X-Github-Event"]
    hub_signature = request.headers["X-Hub-Signature"]
    github_delivery = request.headers["X-Github-Delivery"]


  end
end