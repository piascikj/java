# http://docs.puppetlabs.com/references/latest/type.html

class requirements(
    $version = "1.7"
) {
    
    case $version {
        
        "1.7": {}
        "1.6": {}
        default: { fail("only Java Versions 1.6 and 1.7 are supported") }
        
    }
    
    case $::operatingsystem {
        
        windows: { fail("not yet implemented") }
        solaris: { fail("not yet implemented") }
        centos: { fail("not yet implemented") }
        redhat: { fail("not yet implemented") }
        debian: { fail("not yet implemented") }
        ubuntu: {}
        default: { fail("Unrecognized operating system") }
        
    }
    
}
