Package { ensure => latest, }

package { "apt-packages": name => [ "git", "ruby", "ruby-dev", "rubygems1.8", ], }->
package { "gem-packages": name => [ "rake", "puppetlabs_spec_helper", "puppet", ], provider => gem, }->
class   { "java":         vendor => "oracle", }
