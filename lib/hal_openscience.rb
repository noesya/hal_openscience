# frozen_string_literal: true

require "json"
require "net/http"
require "open-uri"
require "bibtex"

require "hal_openscience/version"

require "hal_openscience/response"
require "hal_openscience/resources"

module HalOpenscience
  BASE_URL = "https://api.archives-ouvertes.fr"
end
