# http://docs.puppetlabs.com/references/latest/type.html

class export(
    $export_path    = true,
    $set_as_default = true
) {
    
    if $export_path {
        
        case $::operatingsystem {
            
            ubuntu: {
                 
                 file_line{ "etc_environment":
                    path => "/etc/environment",
                    line => "JAVA_HOME=",
                }
                
            }
            
        }
        
    }
    
    if $set_as_default {
        
        case $::operatingsystem {
            
            ubuntu: {
                 
                 # // TODO
                 
            }
            
        }
        
    }
    
}
