require 'puppet'
require 'rubygems'
require 'rspec-puppet'
require 'puppetlabs_spec_helper/puppet_spec_helper'

RSpec.configure do |c|
  c.module_path = File.join(File.dirname(__FILE__), '..')
  c.manifest = '../manifests/site.pp'
end
