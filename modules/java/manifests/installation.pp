# http://docs.puppetlabs.com/references/latest/type.html

class java::installation (
    $version         = "1.7",
    $vendor          = "openjdk",
    $install_jdk     = true,
    $install_jre     = true,
    $install_sources = true,
    $install_javadoc = true,
) {
    
    Package { ensure => latest }
    
    class oracle {
        
        Exec { path => [ "/bin", "/usr/bin" ] }
        
        case $java::installation::version {
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
        
        if $java::installation::install_jdk {
            case $java::installation::version {
                "1.6": { package { "openjdk-6-jdk": } }
                "1.7": { package { "openjdk-7-jdk": } }
            }
        }
        
        if $java::installation::install_jre {
            case $java::installation::version {
                "1.6": { package { "openjdk-6-jre": } }
                "1.7": { package { "openjdk-7-jre": } }
            }
        }
        
        if $java::installation::install_sources {
            case $java::installation::version {
                "1.6": { package { "openjdk-6-source": } }
                "1.7": { package { "openjdk-7-source": } }
            }
        }
        
        if $java::installation::install_javadoc {
            case $java::installation::version {
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
    
    if $::osfamily == "Debian" {
        class { $java::installation::vendor: }
    }
    
}
