# frozen_string_literal: true

require "json"
require "net/http"
require "open-uri"

require "hal_openscience/version"
require "hal_openscience/response"
require "hal_openscience/resources"
require "hal_openscience/railtie" if defined?(Rails::Railtie)

module HalOpenscience
  BASE_URL = "https://api.archives-ouvertes.fr"
end
