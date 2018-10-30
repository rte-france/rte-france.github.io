---
title: Hades
layout: default
---

Hades is a free software distributed by [RTE France](https://www.rte-france.com) to run loadflow, security analysis,
sensitivity computations and remedial actions simulations on a grid. RTE provides closed-source jars to integrate Hades
to an application based on [powsybl](http://www.powsybl.com). Read the complete software [license](license.md) agreement.

# Installation guide
Hades is compatible with GNU/Linux environment.

## Download
Hades is downloadable from the [RTE iPST](http://www.rte.itesla-pst.org/) website. Once the form is filled, an email is
sent with the download link.

## Install
To install Hades, simply extract the content of the archive.
```shell
$> tar xf hades2-V5.5.1.2.tar.gz
$> cd hades2-V5.5.1.2
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
    <groupId>com.rte-france</groupId>
    <artifactId>powsybl-hades2-integration</artifactId>
    <version>2.1.2</version>
    <scope>runtime</scope>
</dependency>
```

Read how to create a powsybl bundle based on [itools](http://powsybl.github.io/docs/installation/itools-packager.html)
or on the [Grid Study Environment](http://powsybl.github.io/docs/installation/javafx-packager.html), a JavaFX desktop
application.

# Features

## Load-flow
Read this [documentation](features/loadflow.md) page to learn how to configure powsybl to use Hades for load-flow computations.

## Security Analysis
Read this [documentation](features/security-analysis.md) page to learn how to configure powsybl to use Hades for security analysis
computations.

## Remedial Action simulation
Read this [documentation](features/action-simulator.md) page to learn how to configure powsybl to use Hades for remedial
actions simulations.
