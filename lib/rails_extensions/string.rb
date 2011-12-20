#
module RailsExtensions
  module String
    def to_sha1
      Digest::SHA1.hexdigest(self)
    end

    def to_slug(delimiter="-")
      self.gsub(/[^a-z0-9]/i, " ").strip.gsub(/\s/, '-').gsub(/-{2}/, '-').downcase
    end

    def to_email
      self.scan(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/)
    end
  end
end
