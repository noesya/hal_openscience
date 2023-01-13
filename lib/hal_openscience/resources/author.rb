module HalOpenscience
  class Author < BaseResource
    def self.repository_url
      "#{HalOpenscience::BASE_URL}/ref/author/"
    end
  end
end
