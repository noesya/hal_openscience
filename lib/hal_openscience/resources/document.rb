module HalOpenscience
  class Document < BaseResource
    def self.repository_url
      "#{HalOpenscience::BASE_URL}/search/"
    end

    def self.search_by_person_id(person_id, fields: [], limit: 30, offset: 0)
      self.search("authIdPerson_i:#{person_id}", fields: fields, limit: limit, offset: offset)
    end
  end
end
