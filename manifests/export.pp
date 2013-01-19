# http://docs.puppetlabs.com/references/latest/type.html

class java::export(
    $export_path    = true,
    $set_as_default = true,
    $vendor         = "openjdk",
    $version        = "1.7",
    $install_jdk    = true,
    $install_jre    = true,
) {
    
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/ControlPanel to provide /usr/bin/ControlPanel (ControlPanel) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/java to provide /usr/bin/java (java) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/java_vm to provide /usr/bin/java_vm (java_vm) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/javaws to provide /usr/bin/javaws (javaws) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/jcontrol to provide /usr/bin/jcontrol (jcontrol) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/keytool to provide /usr/bin/keytool (keytool) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/orbd to provide /usr/bin/orbd (orbd) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/pack200 to provide /usr/bin/pack200 (pack200) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/policytool to provide /usr/bin/policytool (policytool) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/rmid to provide /usr/bin/rmid (rmid) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/rmiregistry to provide /usr/bin/rmiregistry (rmiregistry) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/servertool to provide /usr/bin/servertool (servertool) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/tnameserv to provide /usr/bin/tnameserv (tnameserv) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/bin/unpack200 to provide /usr/bin/unpack200 (unpack200) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/lib/jexec to provide /usr/bin/jexec (jexec) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/appletviewer to provide /usr/bin/appletviewer (appletviewer) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/apt to provide /usr/bin/apt (apt) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/extcheck to provide /usr/bin/extcheck (extcheck) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/idlj to provide /usr/bin/idlj (idlj) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jar to provide /usr/bin/jar (jar) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jarsigner to provide /usr/bin/jarsigner (jarsigner) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/javac to provide /usr/bin/javac (javac) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/javadoc to provide /usr/bin/javadoc (javadoc) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/javah to provide /usr/bin/javah (javah) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/javap to provide /usr/bin/javap (javap) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jconsole to provide /usr/bin/jconsole (jconsole) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jdb to provide /usr/bin/jdb (jdb) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jhat to provide /usr/bin/jhat (jhat) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jinfo to provide /usr/bin/jinfo (jinfo) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jmap to provide /usr/bin/jmap (jmap) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jps to provide /usr/bin/jps (jps) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jrunscript to provide /usr/bin/jrunscript (jrunscript) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jsadebugd to provide /usr/bin/jsadebugd (jsadebugd) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jstack to provide /usr/bin/jstack (jstack) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jstat to provide /usr/bin/jstat (jstat) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jstatd to provide /usr/bin/jstatd (jstatd) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/jvisualvm to provide /usr/bin/jvisualvm (jvisualvm) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/native2ascii to provide /usr/bin/native2ascii (native2ascii) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/rmic to provide /usr/bin/rmic (rmic) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/schemagen to provide /usr/bin/schemagen (schemagen) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/serialver to provide /usr/bin/serialver (serialver) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/wsgen to provide /usr/bin/wsgen (wsgen) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/wsimport to provide /usr/bin/wsimport (wsimport) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/bin/xjc to provide /usr/bin/xjc (xjc) in auto mode.
    # update-alternatives: using /usr/lib/jvm/java-6-oracle/jre/lib/amd64/libnpjp2.so to provide /usr/lib/mozilla/plugins/libnpjp2.so (libnpjp2.so) in auto mode.
    
    class oracle {
    }
    
    class openjdk {
        
        if $install_jdk {
            file_line{ "jdk_etc_environment_java_home":
                path => "/etc/environment",
                line => "JAVA_HOME=/usr/lib/jvm/java-6-openjdk-${::architecture}/",
            }
            file_line{ "jdk_etc_environment_jre_home":
                path => "/etc/environment",
                line => "JRE_HOME=/usr/lib/jvm/java-6-openjdk-${::architecture}/jre/",
            }
        }
        
        if $install_jre {
            file_line{ "jre_etc_environment_jre_home":
                path => "/etc/environment",
                line => "JRE_HOME=/usr/lib/jvm/java-6-openjdk-${::architecture}/jre/",
            }
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
