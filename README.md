epiphany-cgen-build
===================

A Vagrant machine configured to build the Epiphany documentaion included in https://github.com/adapteva/epiphany-cgen

Building
--------

Just run:

```
$ vagrant up
```

Vagrant will then bring up an [ubuntu/trusty64](https://vagrantcloud.com/ubuntu/boxes/trusty64) instance, and will build the Epiphany-related HTML documentation for `cgen`.

The generated HTML files will be then visible in the host system in the  `epiphany-cgen/cgen/doc/cgen.html/` directory.
