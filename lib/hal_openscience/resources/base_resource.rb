module HalOpenscience
  class BaseResource
    attr_reader :attributes

    def self.repository_url
      raise NotImplementedError
    end

    def self.search(term, fields: [], limit: 30, offset: 0)
      uri = URI.parse(self.repository_url)
      params = {
        q: term,
        rows: limit,
        start: offset,
        fl: fields.join(','),
        wt: 'json'
      }
      uri.query = URI.encode_www_form(params)
      body = Net::HTTP.get(uri)

      HalOpenscience::Response.new(body, self)
    end

    def initialize(attributes)
      @attributes = attributes
    end

    def method_missing(method_name, *args, &block)
      if @attributes.has_key? method_name.to_s
        @attributes[method_name.to_s]
      else
        raise ArgumentError.new("Method `#{method_name}` doesn't exist.")
      end
    end
  end
end
