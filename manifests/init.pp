# http://docs.puppetlabs.com/references/latest/type.html

class java(
    $version        = "1.7",
    $jdk            = true,
    $jre            = true,
    $sources        = true,
    $javadoc        = true,
    $export_path    = true,
    $set_as_default = true
) {
    
    class { "requirements":
        version        => $version
    } ->
    class { "repositories": } ->
    class { "installation": } ->
    class { "export":
        export_path    => $export_path,
        set_as_default => $set_as_default,
    }
    
}
