module GitbotLib
  class Bot
    # Returns in case of necessary the bot comment
    def self.bot_comment_for_request(message)
    end

    # Returns an array with repos that have this bot enabled
    def self.enabled_bots_for_repo()
      bots = []
      $accounts["github"]["repos"].each do |repo|
        repo["bots"].each do |bot|
          bot_class = self.class_from_bot(bot)
          next unless bot_class
          bots << bot_class
        end
      end
      bots
    end

    # Returns the class of the bot
    def self.class_from_bot(bot)
      if bot == "image-bot" then return Gitbot::ImageBot.name end
      if bot == "gif-bot" then return Gitbot::Gifbot.name end
      return nil
    end
  end
end