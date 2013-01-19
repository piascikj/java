# http://docs.puppetlabs.com/references/latest/type.html

class java::requirements(
    $version  = "1.7",
    $vendor = "openjdk",
) {
    
    $supportedVendors = [ "openjdk", "oracle", "gnu", "ibm" ]
    $supportedVersions = [ "1.6", "1.7" ]
    
    if !$supportedVersions.include?($java::requirements::version) {
        fail("only Java Versions 1.6 and 1.7 are supported")
    }
    
    if !$supportedVendors.include?($java::requirements::vendor) {
        fail("only the following vendors are supported: ${supportedVendors}")
    }
    
    case $::operatingsystem {
        
        windows: { fail("not yet implemented") }
        solaris: { fail("not yet implemented") }
        centos:  { fail("not yet implemented") }
        redhat:  { fail("not yet implemented") }
        debian:  { fail("not yet implemented") }
        default: { fail("Unrecognized operating system") }
        
    }
    
}
