# http://docs.puppetlabs.com/references/latest/type.html

class java::installation(
    $version         = "1.7",
    $vendor          = "openjdk",
    $install_jdk     = true,
    $install_jre     = true,
    $install_sources = true,
    $install_javadoc = true,
) {
    
    Package { ensure => latest }
    
    class oracle {
        
        case $version {
            "1.6": { $package_name = "oracle-java6-installer" }
            "1.7": { $package_name = "oracle-java7-installer" }
        }
        
        exec { "oracle_license_agreement":
            command => "echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections",
        } -> exec { "oracle_license_view":
            command => "echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections",
        } -> package { $package_name: }
        
    }
    
    class openjdk {
        
        if $install_jdk {
            case $version {
                "1.6": { package { "openjdk-6-jdk": } }
                "1.7": { package { "openjdk-7-jdk": } }
            }
        }
        
        if $install_jre {
            case $version {
                "1.6": { package { "openjdk-6-jre": } }
                "1.7": { package { "openjdk-7-jre": } }
            }
        }
        
        if $install_sources {
            case $version {
                "1.6": { package { "openjdk-6-source": } }
                "1.7": { package { "openjdk-7-source": } }
            }
        }
        
        if $install_javadoc {
            case $version {
                "1.6": { package { "openjdk-6-doc": } }
                "1.7": { package { "openjdk-7-doc": } }
            }
        }
        
    }
    
    class gnu {
        # gcj
    }
    
    class ibm {
    }
    
    if $::operatingsystem == "ubuntu" {
        class { $vendor: }
    }
    
}
