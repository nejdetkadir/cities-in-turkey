require_relative 'lib/cities_in_turkey/version'

Gem::Specification.new do |spec|
  spec.name          = "cities-in-turkey"
  spec.version       = CitiesInTurkey::VERSION
  spec.authors       = ["nejdetkadir"]
  spec.email         = ["nejdetkadir.550@gmail.com"]

  spec.summary       = "Cities, towns, districts and quarters in Turkey"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/nejdetkadir/cities-in-turkey"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
