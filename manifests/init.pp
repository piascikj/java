# http://docs.puppetlabs.com/references/latest/type.html

class java::init (
    $version        = "1.7",
    $jdk            = true,
    $jre            = true,
    $sources        = true,
    $javadoc        = true,
    $vendor         = "openjdk",
    $export_path    = true,
    $set_as_default = true,
) {
    
    class { "requirements":
        version         => $java::init::version,
        vendor          => $java::init::vendor,
    } ->
    class { "repositories":
        vendor          => $java::init::vendor,
    } ->
    class { "installation":
        version         => $java::init::version,
        install_jdk     => $java::init::jdk,
        install_jre     => $java::init::jre,
        install_sources => $java::init::sources,
        install_javadoc => $java::init::javadoc,
    } ->
    class { "export":
        export_path     => $java::init::export_path,
        set_as_default  => $java::init::set_as_default,
        vendor          => $java::init::vendor,
        version         => $java::init::version,
        install_jdk     => $java::init::jdk,
        install_jre     => $java::init::jre,
    }
    
}
