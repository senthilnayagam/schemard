# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "schemard"

Gem::Specification.new do |spec|
  spec.name          = "schemard"
  spec.version       = SchemaRD::VERSION
  spec.authors       = ["ken TANAKA"]
  spec.email         = ["x.tanaka.ken.at.gmail.com"]

  spec.summary       = "SchemaRD is a ERD Viewer for schema.rb."
  spec.description   = <<-eof
    SchemaRD is a Entity Relationship Diagram Viewer for schema.rb which is used on Ruby On Rails.
    You can browse Entity Relationship Diagram of your schema.rb, on your WebBrowser.
  eof
  spec.homepage      = "https://github.com/xketanaka/schemard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["schemard"]
  spec.require_paths = ["lib"]
  # This gem will work with 2.0 or greater...
  spec.required_ruby_version = '>= 2.0'

  spec.add_development_dependency "bundler", "~> 1.0"
  spec.add_development_dependency "rake", "~> 0.9"
end
