module GitbotLib
  # This bot reads the following message pattern
  # | gif bob marley |
  # And creates a new comment
  class GifBot < Bot
     # Returns in case of necessary the bot comment
    def self.bot_comment_for_request(message)
      image_url = self.image_url_from_request(message)
      return nil unless image_url
      return "[!GifBot](#{image_url})"
    end

    def self.gif_url_from_request(message)
      # Regular expression: ^\s*gif\s{1}(.+)$
      match = /^\s*gif\s{1}(.+)$/.match(message)
      return unless match

      # User requested image from bot
      gifs = Giphy.search(match[1], {limit: 10, offset: 0})
      return unless !gifs.empty?
      return gifs[0].original_image.url
    end
  end
end