# jpuppet-java

## Description

Installs or reconfigures java.

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
    - ensures the export of the JAVA_HOME variable
