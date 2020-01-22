---
title: Hades
layout: default
---

Hades is a free software distributed by [RTE France](https://www.rte-france.com) to run loadflow, security analysis, sensitivity computations and remedial actions simulations on a grid.

# License

RTE provides closed-source jars to integrate Hades to an application based on [powsybl](http://www.powsybl.com). Hades2 is distributed in the form of closed source because it is a legacy software that is not suitable for open source collaboration. Please read the complete software [license](license.md) agreement before going further.

# Installation guide
Hades is compatible with Linux (64 bits) and with Windows (64 bits) environments.

## Download

<div>
To download and use Hades2, please agree to the license agreement by checking the following checkbox:<br>

<style>
#hades2-link { display: none;}
#hades2-toggle:checked + #hades2-link { display: block;}
</style>
<p></p>
<label for="hades2-toggle">I agree to the hades2 license agreement</label>
<input id="hades2-toggle" type="checkbox" name="hades2-toggle">
<div id="hades2-link">
<p> Linux distribution (64 bits): <a href="https://github.com/rte-france/hades2-distribution/releases/download/V6.4.0/hades2-V6.4.0.1.1-linux.tar.gz">hades2-V6.4.0.1.1-linux.tar.gz</a></p>
<p> Windows distribution (64 bits): <a href="https://github.com/rte-france/hades2-distribution/releases/download/V6.4.0/hades2-V6.4.0.1.1-windows.zip">hades2-V6.4.0.1.1-windows.zip</a></p>
</div>
</div>

## Install
To install Hades, simply extract the content of the archive.
```shell
$> tar xf hades2-V6.2.0.1-linux.tar.gz
$> cd hades2-V6.2.0.1
$> ./hades2
init iodico
RTE load flow tool - RTE HADES trial and academic license expiring the 31/10/2019
usage :

commands :
 hades2 LF    <adn_in> <adn_out>  [<logs.xml>] [<timeout(secondes)>] [<nbThreads>] : calcul

 hades2 RSCT  <adn_in> <fic_out> : calcul matrices RSCT

 hades2 TD  <adn_in> <fic_out> : calcul sensibilites TD

 hades2 txt    <adn_out> <fic_res> : sorties adn en txt
 hades2 adntxt    <adn_in> <rep_adn> : sorties adn en txt

where :
  <adn_in>      : ADN input file name
  <adn_out>     : ADN output file name
  <fic_res>     : fichiers _noeuds.txt et _quads.txt avec resultats

```

## Integration in powsybl
Hades integration jars are published to maven central. Thus, to integrate Hades in a powsybl bundle, add the following
dependencies to the `pom.xml` file:
```xml
<dependency>
    <groupId>com.rte-france.powsybl</groupId>
    <artifactId>powsybl-hades2-integration</artifactId>
    <version>2.6.0</version>
    <scope>runtime</scope>
</dependency>
```

Read how to create a powsybl bundle based on [itools](http://powsybl.github.io/docs/installation/itools-packager.html)
or on the [Grid Study Environment](http://powsybl.github.io/docs/installation/javafx-packager.html), a JavaFX desktop
application.

The `itools-packager` plugin of powsybl-core will copy all the maven dependencies to the share/java folder of the distribution. To enable a feature, you have to add a runtime dependency to the `pom.xml` file. 

If you do not want to modify the `pom.xml` file, you have to download the dependencies for Hades2 integration in the `share/java` folder of the itools distribution. The dependencies are available on Maven Central following that [link](https://mvnrepository.com/artifact/com.rte-france.powsybl). The following jar files have to be downloaded:
```
powsybl-adn-api
powsybl-hades2-integration
powsybl-rte-commons
powsybl-adn-export
powsybl-iidm-cvg-extensions
powsybl-iidm-shortcircuits
powsybl-adn-xml
powsybl-rte-core
powsybl-adn
```

# Features

## Load-flow
Read this [documentation](features/loadflow.md) page to learn how to configure powsybl to use Hades for load-flow computations.

## Security Analysis
Read this [documentation](features/security-analysis.md) page to learn how to configure powsybl to use Hades for security analysis
computations.

## Remedial Action simulation
Read this [documentation](features/action-simulator.md) page to learn how to configure powsybl to use Hades for remedial
actions simulations.

# What's next ?

Our goal is to have also open source computation modules integrated to PowSyBl (load flows, time domain simulators, optimizers, etc.). This is however work in progress and we would welcome contributions in that field.

Please also note that a simple DC load-flow is currently being developed mainly for demo purposes. The code is in the repository [powsybl-incubator](https://github.com/powsybl/powsybl-incubator).
