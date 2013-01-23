# http://docs.puppetlabs.com/references/latest/type.html

class java (
    $version        = "1.7",
    $jdk            = true,
    $jre            = true,
    $sources        = true,
    $javadoc        = true,
    $vendor         = "openjdk",
    $export_path    = true,
    $set_as_default = true,
) {
    
    include stdlib
    
    class { "java::requirements":
        version         => $java::version,
        vendor          => $java::vendor,
        stage           => setup,
    }
    
    class { "java::repositories":
        vendor          => $java::vendor,
        require         => Class[ "java::requirements" ],
        stage           => setup,
    }
    
    class { "java::installation":
        version         => $java::version,
        vendor          => $java::vendor,
        install_jdk     => $java::jdk,
        install_jre     => $java::jre,
        install_sources => $java::sources,
        install_javadoc => $java::javadoc,
        require         => Class[ "java::repositories" ],
        stage           => main,
    }
    
    class { "java::export":
        export_path     => $java::export_path,
        set_as_default  => $java::set_as_default,
        vendor          => $java::vendor,
        version         => $java::version,
        install_jdk     => $java::jdk,
        install_jre     => $java::jre,
        require         => Class[ "java::installation" ],
        stage           => runtime,
    }
    
}
