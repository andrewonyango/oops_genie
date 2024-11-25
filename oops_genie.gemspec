$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require 'oops_genie/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'oops_genie'
  spec.version     = OopsGenie::VERSION
  spec.authors     = ['dondeng']
  spec.email       = ['dondeng2@gmail.com']
  spec.homepage    = 'https://github.com/dondeng/oops_genie'
  spec.summary     = 'Integration to OpsGenie API'
  spec.description = 'This is a minimal gem that integrates to the OpsGenie API specification. Right now only OpsGenie Alerts are implemented. More functionality will follow later.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'json', '~> 2.3.0'
  spec.add_dependency 'rails', '7.2.2'

  spec.add_development_dependency 'sqlite3', '~> 0'
end
