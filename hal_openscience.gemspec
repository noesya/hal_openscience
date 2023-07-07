# frozen_string_literal: true

require_relative "lib/hal_openscience/version"

Gem::Specification.new do |spec|
  spec.name = "hal_openscience"
  spec.version = HalOpenscience::VERSION
  spec.authors = ["Sébastien Gaya", "Arnaud Levy"]
  spec.email = ["sebastien.gaya@noesya.coop", "arnaud.levy@noesya.coop"]

  spec.summary = "API wrapper for HAL OpenScience"
  spec.homepage = "https://github.com/noesya/hal_openscience"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/noesya/hal_openscience"
  spec.metadata["changelog_uri"] = "https://github.com/noesya/hal_openscience/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_dependency "net-http"
  spec.add_dependency "open-uri"
  spec.add_dependency "bibtex-ruby"
end
