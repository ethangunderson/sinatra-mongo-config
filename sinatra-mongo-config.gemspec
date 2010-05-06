Gem::Specification.new do |s|
  s.name = %q{sinatra-mongo-config}
  s.version = "0.0.1"

  s.authors = ["Ethan Gunderson"]
  s.date = %q{2010-05-05}
  s.description = %q{A simple wrapper for instantiating a MongoDB connection in Sinatra}
  s.email = %q{ethan@ethangunderson.com}

  s.homepage = %q{http://github.com/ethangunderson/sinatra-mongo-config}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A thin Mongo wrapper for Sinatra.}

  s.files = %w( README.md  )
  s.files += Dir.glob("lib/**/*")

  s.add_dependency(%q<sinatra>, [">= 1.0"])
  s.add_dependency(%q<mongo>, [">= 1.0"])
  s.add_dependency(%q<bson_ext>, [">= 1.0"])
end