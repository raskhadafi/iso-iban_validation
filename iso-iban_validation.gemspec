lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'iso/iban_validation/version'

Gem::Specification.new do |spec|
  spec.name        = "iso-iban_validation"
  spec.version     = Iso::IbanValidation::VERSION
  spec.authors     = ["Roman Simecek"]
  spec.email       = ["roman@good2go.ch"]
  spec.summary     = %q{IBAN rails validator}
  spec.description = %q{IBAN rails validator with iso-iban.}
  spec.homepage    = "https://github.com/raskhadafi/iso-iban_validation"
  spec.license     = "MIT"

  spec.files = Dir['bin/**/*'] + Dir['lib/**/*'] + %w[
    iso-iban_validation.gemspec
    LICENSE.txt
    Rakefile
    README.md
  ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'iso-iban'
  spec.add_dependency 'activemodel'

  spec.required_ruby_version     = ">= 1.9.2"
  spec.required_rubygems_version = Gem::Requirement.new("> 1.3.1")
  spec.rubygems_version          = "1.3.1"
  spec.specification_version     = 3
end
