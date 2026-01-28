# frozen_string_literal: true

require "json"
require "net/http"
require "open-uri"

# Try to load Railties to check if we are in a Rails environment
begin
  require "railties"
rescue LoadError
  # Not in a Rails environment
end

require "hal_openscience/version"
require "hal_openscience/response"
require "hal_openscience/resources"
require "hal_openscience/engine" if defined?(Rails::Engine)

module HalOpenscience
  BASE_URL = "https://api.archives-ouvertes.fr"
end
