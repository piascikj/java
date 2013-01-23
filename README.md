# jpuppet-java

Installs or reconfigures java.

[![Build Status](https://travis-ci.org/jpuppet/java.png?branch=master)](https://travis-ci.org/jpuppet/java)

## License

Apache 2.0 License (http://www.apache.org/licenses/LICENSE-2.0)

## Usage

```puppet
  class { "java":
    version        => "1.7",
    jdk            => true,
    jre            => true,
    sources        => true,
    javadoc        => true,
    set_as_default => false,
    export_path    => false,
    vendor         => "oracle",
  }
```

* version
    - the java version ("1.7", "1.6")
* jdk
    - ensures the developer kit
* jre
    - ensures the runtime kit
* sources
    - ensures sources
* javadoc
    - ensures javadoc
* set_as_default
    - ensures that the java version is set as default when typing "java"
* export_path
    - ensures the export of the JAVA_HOME and JRE_HOME variable
* vendor
    - determines which JVM to install ("openjdk", "oracle", "gnu", "ibm")
    - Note that you automatically agree to [oracles license](http://www.oracle.com/technetwork/java/javase/terms/license/index.html) if you choose oracle as vandor
