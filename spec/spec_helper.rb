require 'puppet'
require 'facter'
require 'rubygems'

gem 'rspec', '>=2.0.0'
require 'rspec-puppet'
require 'rspec/expectations'
require 'puppetlabs_spec_helper/puppet_spec_helper'
require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.module_path = File.join(File.dirname(__FILE__), '..')
  c.manifest = '../manifests/init.pp'
  c.manifest_dir = File.join(File.dirname(__FILE__), '..', 'manifests')
  
  c.before :each do
    Facter::Util::Loader.any_instance.stubs(:load_all)
    Facter.clear
    Facter.clear_messages
  end
end