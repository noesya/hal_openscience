module HalOpenscience
  class Response
    attr_reader :response, :data, :results, :total_count

    def initialize(body, resource_class)
      @body = body
      @data = JSON.parse(@body)['response']
      @results = @data['docs'].map { |result| resource_class.new(result) }
      @total_count = @data.fetch('numFound', @results.size)
    end

  end
end