# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qiita_information/version'

Gem::Specification.new do |spec|
  spec.name          = "qiita_information"
  spec.version       = QiitaInformation::VERSION
  spec.authors       = ["Kenji KATO"]
  spec.email         = ["kenji.kato@access-company.com"]

  spec.summary       = %q{Get Qiita information.}
  spec.description   = %q{Get informations about Qiita.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capybara", "~> 2.16.1"
  spec.add_dependency "oga", "~> 2.8"
  spec.add_dependency "poltergeist", "~> 1.17.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
