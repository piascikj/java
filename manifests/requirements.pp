# http://docs.puppetlabs.com/references/latest/type.html

class java::requirements(
    $version  = "1.7",
    $vendor = "openjdk",
) {
    
    $supportedVendors = [ "openjdk", "oracle", "gnu", "ibm" ]
    $supportedVersions = [ "1.6", "1.7" ]
    
    if !$supportedVersions.include?($version) {
        fail("only Java Versions 1.6 and 1.7 are supported")
    }
    
    if !$supportedVendors.include?($vendor) {
        fail("only the following vendors are supported: ${supportedVendors}")
    }
    
    if $version == "1.7" and $vendor == "sun" {
        fail("No Java 1.7 from sun")
    }
    
    case $::operatingsystem {
        
        windows: { fail("not yet implemented") }
        solaris: { fail("not yet implemented") }
        centos:  { fail("not yet implemented") }
        redhat:  { fail("not yet implemented") }
        debian:  { fail("not yet implemented") }
        ubuntu:  {}
        default: { fail("Unrecognized operating system") }
        
    }
    
}
