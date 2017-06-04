# -*- encoding: utf-8 -*-
# stub: themoviedb-api 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "themoviedb-api".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["18Months".freeze]
  s.date = "2017-05-24"
  s.description = "Provides a simple and intuitive interface for the Movie Database API making use of OpenStruct.".freeze
  s.email = ["dev@18months.it".freeze]
  s.homepage = "https://github.com/18Months/themoviedb-api".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "themoviedb-api".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A simple to use Ruby wrapper for the The Movie Database API.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>.freeze, [">= 2.0", "~> 2.0"])
      s.add_development_dependency(%q<awesome_print>.freeze, [">= 1.7", "~> 1.7"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 3.0", "~> 3.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 12.0", "~> 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.4", "~> 3.4"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 3.0", "~> 3.0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0.8.10", "~> 0.8.10"])
    else
      s.add_dependency(%q<rest-client>.freeze, [">= 2.0", "~> 2.0"])
      s.add_dependency(%q<awesome_print>.freeze, [">= 1.7", "~> 1.7"])
      s.add_dependency(%q<vcr>.freeze, [">= 3.0", "~> 3.0"])
      s.add_dependency(%q<rake>.freeze, [">= 12.0", "~> 12.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.4", "~> 3.4"])
      s.add_dependency(%q<webmock>.freeze, [">= 3.0", "~> 3.0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0.8.10", "~> 0.8.10"])
    end
  else
    s.add_dependency(%q<rest-client>.freeze, [">= 2.0", "~> 2.0"])
    s.add_dependency(%q<awesome_print>.freeze, [">= 1.7", "~> 1.7"])
    s.add_dependency(%q<vcr>.freeze, [">= 3.0", "~> 3.0"])
    s.add_dependency(%q<rake>.freeze, [">= 12.0", "~> 12.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.4", "~> 3.4"])
    s.add_dependency(%q<webmock>.freeze, [">= 3.0", "~> 3.0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0.8.10", "~> 0.8.10"])
  end
end
