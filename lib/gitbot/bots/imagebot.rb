module GitbotLib
  # This bot reads the following message pattern
  # | image bob marley |
  # And creates a new comment
  class ImageBot < Bot
     # Returns in case of necessary the bot comment
    def self.bot_comment_for_request(message)
      image_url = self.image_url_from_request(message)
      return nil unless image_url
      return "[!ImageBot](#{image_url})"
    end

    def self.image_url_from_request(message)
      # Regular expression: ^\s*image\s{1}(.+)$
      match = /^\s*image\s{1}(.+)$/.match(message)
      return unless match

      # User requested image from bot
      images = Google::Search::Image.new(:query => match[1])
      return unless !images.empty?
      return images[0]
    end
  end
end