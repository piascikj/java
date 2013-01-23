Package { ensure => latest, }

package { "apt-packages": name => [ "git", "ruby", "ruby-dev", "rubygems1.8", "rdoc", "ri", "rake", "puppet", ], }->
package { "gem-packages": name => [ "puppetlabs_spec_helper", ], provider => gem, }->
class   { "java":         vendor => "oracle", }
