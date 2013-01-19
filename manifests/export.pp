# http://docs.puppetlabs.com/references/latest/type.html

class java::export(
    $export_path    = true,
    $set_as_default = true,
    $vendor         = "openjdk",
    $version        = "1.7",
    $install_jdk    = true,
    $install_jre    = true,
) {
    
    $java_version = java::export::version? {
        "1.6": "6",
        "1.7": "7",
    }
    
    class oracle {
        
        if $install_jdk {
            if $export_path {
                file_line{ "jdk_etc_environment_java_home":
                    path => "/etc/environment",
                    line => "JAVA_HOME=/usr/lib/jvm/java-${java_version}-oracle/",
                } -> file_line{ "jdk_etc_environment_jre_home":
                    path => "/etc/environment",
                    line => "JRE_HOME= /usr/lib/jvm/java-${java_version}-oracle/jre/",
                }
            }
        }
        
        if $install_jre {
            if $export_path {
                file_line{ "jre_etc_environment_jre_home":
                    path => "/etc/environment",
                    line => "JRE_HOME= /usr/lib/jvm/java-${java_version}-oracle/jre/",
                }
            }
        }
        
    }
    
    class openjdk {
        
        class openjdk_set_defaults {
            
            if $set_as_default {
                # http://packages.ubuntu.com/precise/amd64/openjdk-6-jdk/filelist
                # http://packages.ubuntu.com/precise/amd64/openjdk-6-jre/filelist
                # http://packages.ubuntu.com/precise/amd64/openjdk-6-jre-headless/filelist
                # http://packages.ubuntu.com/precise/amd64/icedtea-6-plugin/filelist
                
                exec { "appletviewer": user => root, command => "update-alternatives --set appletviewer /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/appletviewer", } ->
                exec { "apt":          user => root, command => "update-alternatives --set apt          /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/apt", } ->
                exec { "extcheck":     user => root, command => "update-alternatives --set extcheck     /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/extcheck", } ->
                exec { "idlj":         user => root, command => "update-alternatives --set idlj         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/idlj, } ->
                exec { "jar":          user => root, command => "update-alternatives --set jar          /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jar, } ->
                exec { "jarsigner":    user => root, command => "update-alternatives --set jarsigner    /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jarsigner, } ->
                exec { "javac":        user => root, command => "update-alternatives --set javac        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/javac, } ->
                exec { "javadoc":      user => root, command => "update-alternatives --set javadoc      /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/javadoc, } ->
                exec { "javah":        user => root, command => "update-alternatives --set javah        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/javah, } ->
                exec { "javap":        user => root, command => "update-alternatives --set javap        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/javap, } ->
                exec { "jconsole":     user => root, command => "update-alternatives --set jconsole     /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jconsole, } ->
                exec { "jdb":          user => root, command => "update-alternatives --set jdb          /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jdb, } ->
                exec { "jhat":         user => root, command => "update-alternatives --set jhat         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jhat, } ->
                exec { "jinfo":        user => root, command => "update-alternatives --set jinfo        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jinfo, } ->
                exec { "jmap":         user => root, command => "update-alternatives --set jmap         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jmap, } ->
                exec { "jps":          user => root, command => "update-alternatives --set jps          /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jps, } ->
                exec { "jrunscript":   user => root, command => "update-alternatives --set jrunscript   /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jrunscript, } ->
                exec { "jsadebugd":    user => root, command => "update-alternatives --set jsadebugd    /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jsadebugd, } ->
                exec { "jstack":       user => root, command => "update-alternatives --set jstack       /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jstack, } ->
                exec { "jstat":        user => root, command => "update-alternatives --set jstat        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jstat, } ->
                exec { "jstatd":       user => root, command => "update-alternatives --set jstatd       /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/jstatd, } ->
                exec { "native2ascii": user => root, command => "update-alternatives --set native2ascii /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/native2ascii, } ->
                exec { "rmid":         user => root, command => "update-alternatives --set rmid         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/rmid, } ->
                exec { "schemagen":    user => root, command => "update-alternatives --set schemagen    /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/schemagen, } ->
                exec { "serialver":    user => root, command => "update-alternatives --set serialver    /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/serialver, } ->
                exec { "wsgen":        user => root, command => "update-alternatives --set wsgen        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/wsgen, } ->
                exec { "wsimport":     user => root, command => "update-alternatives --set wsimport     /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/wsimport, } ->
                exec { "xjc":          user => root, command => "update-alternatives --set xjc          /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/xjc, } ->
                exec { "policytool":   user => root, command => "update-alternatives --set policytool   /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/policytool, } ->
                exec { "java":         user => root, command => "update-alternatives --set java         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/java, } ->
                exec { "keytool":      user => root, command => "update-alternatives --set keytool      /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/keytool, } ->
                exec { "orbd":         user => root, command => "update-alternatives --set orbd         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/orbd, } ->
                exec { "pack200":      user => root, command => "update-alternatives --set pack200      /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/pack200, } ->
                exec { "rmiregistry":  user => root, command => "update-alternatives --set rmiregistry  /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/rmiregistry, } ->
                exec { "servertool":   user => root, command => "update-alternatives --set servertool   /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/servertool, } ->
                exec { "tnameserv":    user => root, command => "update-alternatives --set tnameserv    /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/tnameserv, } ->
                exec { "unpack200":    user => root, command => "update-alternatives --set unpack200    /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/unpack200, } ->
                exec { "javaws":       user => root, command => "update-alternatives --set javaws       /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/bin/javaws, } ->
                exec { "jexec":        user => root, command => "update-alternatives --set jexec        /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/lib/jexec, } ->
                exec { "rmic":         user => root, command => "update-alternatives --set rmic         /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/bin/rmic, } ->
                exec { "libnpjp2":     user => root, command => "update-alternatives --set libnpjp2.so  /usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/lib/${::architecture}/IcedTeaPlugin.so", }
            }
            
        }
        
        if $install_jdk {
            if $export_path {
                file_line{ "jdk_etc_environment_java_home":
                    path => "/etc/environment",
                    line => "JAVA_HOME=/usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/",
                } -> file_line{ "jdk_etc_environment_jre_home":
                    path => "/etc/environment",
                    line => "JRE_HOME=/usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/",
                }
            }
            
            class { "openjdk_set_defaults": }
        }
        
        if $install_jre {
            if $export_path {
                file_line{ "jre_etc_environment_jre_home":
                    path => "/etc/environment",
                    line => "JRE_HOME=/usr/lib/jvm/java-${java_version}-openjdk-${::architecture}/jre/",
                }
            }
            
            class { "openjdk_set_defaults": }
        }
        
    }
    
    class gnu {
    }
    
    class ibm {
    }
    
    if $::operatingsystem == "ubuntu" {
        class { $vendor: }
    }
    
}
