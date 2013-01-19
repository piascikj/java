# http://docs.puppetlabs.com/references/latest/type.html

class java::repositories(
    $oracle_ppa_repository = "ppa:webupd8team/java",
    $vendor,
) {
    
    Exec    { user   => root }
    Package { ensure => latest }
    
    case $::operatingsystem {
        
        ubuntu: {
            
            case $java::repositories::vendor {
                
                "ibm":     {
                }
                
                "gnu":     {
                }
                
                "oracle":  {
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
