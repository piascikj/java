# http://docs.puppetlabs.com/references/latest/type.html

class java::repositories (
    $oracle_ppa_repository = "ppa:webupd8team/java",
    $vendor,
) {
    
    Exec    { user   => root, path => [ "/bin", "/usr/bin" ] }
    Package { ensure => latest, }
    
    case $::osfamily {
        
        "Debian": {
            
            case $java::repositories::vendor {
                
                "oracle":  {
                    exec    { "general_apt_update": command => "apt-get update", } ->
                    package { "python-software-properties": } ->
                    exec    { "oracle_installer":            command => "add-apt-repository ${java::repositories::oracle_ppa_repository}", } ->
                    exec    { "oracle_installer_apt_update": command => "apt-get update", }
                }
                
                "openjdk": {
                    exec    { "general_apt_update": command => "apt-get update", }
                }
                
            }
            
        }
        
    }
    
}
