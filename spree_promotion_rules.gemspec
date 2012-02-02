# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_promotion_rules'
  s.version     = '0.70.3'
  s.summary     = 'Collection of Spree Promotion Rules'
  s.description = 'Spree Promotion Rules is a collection of spree promotion rules.  It currently only has one rule that supports roles.'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'John Hwang'
  s.email             = 'johnyhwang@gmail.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.70.3'
  s.add_dependency 'spree_promo', '>= 0.70.3'
  s.add_development_dependency 'rspec-rails'
end

