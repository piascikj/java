# jpuppet-java

Installs or reconfigures java.

[![Build Status](https://travis-ci.org/jpuppet/java.png?branch=master)](https://travis-ci.org/jpuppet/java)

## License

Apache 2.0 License (http://www.apache.org/licenses/LICENSE-2.0)

## Status

Currently supported:

* Debian Systems (Debian, Ubuntu, ...)
* Java 1.6 and 1.7
* Vendor OpenJDK and Oracle

Features still to come:

* RedHat, Suse, Gentoo, Archlinux, Mandrake, Solaris
* Java 1.8
* install common java libraries

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
    - determines which JVM to install ("openjdk", "oracle")
    - Note that you automatically agree to [oracles license](http://www.oracle.com/technetwork/java/javase/terms/license/index.html) if you choose oracle as vendor

## How To

All how tos assume you started the development vm:

```text
cd <path to project>
vagrant up
vagrant ssh
```

### Build Puppet Module

```text
cd /vagrant
rm -fr modules/java/pkg/
puppet module build modules/java/
```

### Execute Test

```text
cd /vagrant
rake spec
```

## Changelog

#### 1.0.1

BugFix-Release:

* fixes export bug
* fixes vagrant dependencies
* fixes requirements tests

#### 1.0.0

Initial release:

* oracle vendor
* openjdk vendor
* java 1.6
* java 1.7
* debian os-family
