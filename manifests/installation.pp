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
    
    case $::operatingsystem {
        
        "ubuntu": {
            
            $packages = {
                "jdk"         => {
                    "ibm"     => {},
                    "gnu"     => {},
                    "oracle"  => {
                        "1.7" => "oracle-jdk7-installer",
                    },
                    "openjdk" => {
                        "1.6" => "openjdk-6-jdk",
                        "1.7" => "openjdk-7-jdk",
                    },
                },
                "jre"         => {
                    "ibm"     => {},
                    "gnu"     => {},
                    "oracle"  => {
                        "1.6" => "oracle-java6-installer",
                        "1.7" => "oracle-java7-installer",
                    },
                    "openjdk" => {
                        "1.6" => "openjdk-6-jre",
                        "1.7" => "openjdk-7-jre",
                    },
                },
                "sources"     => {
                    "ibm"     => {},
                    "gnu"     => {},
                    "oracle"  => {},
                    "openjdk" => {
                        "1.6" => "openjdk-6-source",
                        "1.7" => "openjdk-7-source",
                    },
                },
                "javadoc"     => {
                    "ibm"     => {},
                    "gnu"     => {},
                    "oracle"  => {},
                    "openjdk" => {
                        "1.6" => "openjdk-6-doc",
                        "1.7" => "openjdk-7-doc",
                    },
                },
            }
            
        }
        
    }
    
    if $packages {
        $jdk     = $packages["jdk"]
        if $install_jdk {
            if $jdk[$vendor][$version] { package { $jdk[$vendor][$version]: } }
            else                       { fail( "no package available for JDK" )}
        }
        
        $jre     = $packages["jre"]
        if $install_jre {
            if $jre[$vendor][$version] { package { $jre[$vendor][$version]: } }
            else                       { fail( "no package available for JRE" )}
        }
        
        $sources = $packages["sources"]
        if $install_sources {
            if $sources[$vendor][$version] { package { $sources[$vendor][$version]: } }
            else                           { fail( "no package available for Sources" )}
        }
        
        $javadoc = $packages["javadoc"]
        if $install_javadoc {
            if $javadoc[$vendor][$version] { package { $javadoc[$vendor][$version]: } }
            else                           { fail( "no package available for JavaDoc" )}
        }
    }
    
}
