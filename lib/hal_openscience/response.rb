module HalOpenscience
  class Response
    FORMATS = %w(json bibtex)

    attr_reader :response, :data, :results, :total_count, :format

    def initialize(body, resource_class, format: 'json')
      @body = body
      @resource_class = resource_class
      @format = format.to_s
      raise ArgumentError.new("#{@format} format is not supported. Supported formats are: #{FORMATS.join(', ')}.") unless FORMATS.include?(@format)
      parse_data
    end

    private

    def parse_data
      case @format
      when 'json'
        parse_data_as_json
      when 'bibtex'
        parse_data_as_bibtex
      end
    end

    def parse_data_as_json
      @data = JSON.parse(@body)['response']
      @results = @data['docs'].map { |result| @resource_class.new(result) }
      @total_count = @data.fetch('numFound', @results.size)
    end

    def parse_data_as_bibtex
      @data = BibTeX.parse(@body)
      @results = @data.data
      @total_count = @results.size
    end

  end
end