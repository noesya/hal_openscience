module HalOpenscience
  class Document < BaseResource
    TYPES = [
      'ART',
      'COMM',
      'COUV',
      'THESE',
      'OUV',
      'MEM',
      'UNDEFINED',
      'POSTER',
      'REPORT',
      'OTHER',
      'IMG',
      'ISSUE',
      'PROCEEDINGS',
      'NOTICE',
      'BLOG',
      'HDR',
      'PATENT',
      'VIDEO',
      'REPORT_LABO',
      'LECTURE',
      'TRAD',
      'REPORT_MAST',
      'REPORT_LPRO',
      'REPORT_LICE',
      'SOFTWARE',
      'PRESCONF',
      'CREPORT',
      'SON',
      'REPORT_DOCT',
      'MAP',
      'REPORT_ETAB',
      'REPORT_FORM',
      'REPORT_GMAST',
      'NOTE',
      'SYNTHESE',
      'REPORT_FPROJ',
      'REPORT_GLICE',
      'ETABTHESE',
      'REPACT',
      'MEMLIC',
      'REPORT_RFOINT',
      'REPORT_COOR',
      'REPORT_RETABINT',
      'OTHERREPORT'
    ].freeze

    SUBTYPES = [
      'PHOTOGRAPHY',
      'RESREPORT',
      'BOOKREVIEW',
      'ARTREV',
      'TECHREPORT',
      'ILLUSTRATION',
      'DATAPAPER',
      'WORKINGPAPER',
      'PREPRINT',
      'FUNDREPORT',
      'GRAPHICS',
      'EXPERTREPORT',
      'SYNTOUV',
      'CRIT',
      'MANUAL',
      'DRAWING',
      'GRAVURE',
      'DICTIONAR',
      'DMP'
    ].freeze

    SUBTYPES_PER_TYPE = {
      'ART' => ['ARTREV', 'DATAPAPER', 'BOOKREVIEW'],
      'IMG' => ['DRAWING', 'GRAVURE', 'ILLUSTRATION', 'GRAPHICS', 'PHOTOGRAPHY'],
      'OUV' => ['SYNTOUV', 'MANUAL', 'DICTIONAR', 'CRIT'],
      'UNDEFINED' => ['PREPRINT', 'WORKINGPAPER'],
      'REPORT' => ['RESREPORT', 'TECHREPORT', 'FUNDREPORT', 'EXPERTREPORT', 'DMP']
    }

    def self.repository_url
      "#{HalOpenscience::BASE_URL}/search/"
    end

    def self.search_by_person_id(person_id, fields: [], limit: 30, offset: 0)
      self.search("authIdPerson_i:#{person_id}", fields: fields, limit: limit, offset: offset)
    end
  end
end
