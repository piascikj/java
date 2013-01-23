require 'rake'
require 'rspec'
require 'puppet'
require 'rubygems'
require 'rspec-puppet'

RSpec.configure do |config|
    config.module_path  = File.expand_path(File.join(File.dirname(__FILE__), "..", "modules"))
    config.manifest_dir = File.expand_path(File.join(File.dirname(__FILE__), "fixtures", "manifests"))
end
