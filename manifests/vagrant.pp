Package { ensure => latest, }

package { "apt-packages":
    name     => [ "git", "ruby", "ruby-dev", "rubygems1.8", ],
}

package { "rake":
    provider => gem,
    require  => Package["apt-packages"],
}

package { "puppetlabs_spec_helper":
    provider => gem,
    require  => Package["apt-packages"],
}

package { "puppet":
    provider => gem,
    require  => Package["apt-packages"],
}

class { "java":
    vendor   => "oracle",
    require  => Package["apt-packages"],
}
