---
title: hades2
layout: default
---

The `hades2` module is used to configure Hades.

# Required properties

## homeDir
The `homeDir` property is a required property that defines the installation directory of your Hades distribution.

# Optional properties

## debug
The `debug` property is an optional property that defines if the `loadflow` command will be launched in debug mode. The
default value of this property is `false`.

## timeout
The `timeout` property is an optional property that defines the maximum allowed calculation time (in seconds). The default
value of this property is `60`.

## useSAX
The `useSAX` property is an optional property that defines if XML files are parsed with DOM or SAX. The default value of
this property is `false` which means XML files are parsed with DOM by default.

# Examples
## YAML
```yaml
hades2:
    homeDir: /home/user/hades2-V{{ site.hades2.version }}
    timeout: 60
    debug: false
    useSAX: true
```

## XML
```xml
<hades2>
    <homeDir>/home/user/hades2-V{{ site.hades2.version }}</homeDir>
    <timeout>60</timeout>
    <debug>false</debug>
    <useSAX>false</useSAX>
</hades2>
```
