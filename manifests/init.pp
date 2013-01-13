# http://docs.puppetlabs.com/references/latest/type.html

class java::init (
    $version        = "1.7",
    $jdk            = true,
    $jre            = true,
    $sources        = true,
    $javadoc        = true,
    $vendor         = "openjdk",
    $export_path    = true,
    $set_as_default = true
) {
    
    class { "requirements":
        version         => $version,
        vendor          => $vendor,
    } ->
    class { "repositories":
        vendor          => $vendor,
    } ->
    class { "installation":
        version         => $version,
        install_jdk     => $jdk,
        install_jre     => $jre,
        install_sources => $sources,
        install_javadoc => $javadoc,
    } ->
    class { "export":
        export_path     => $export_path,
        set_as_default  => $set_as_default,
    }
    
}
