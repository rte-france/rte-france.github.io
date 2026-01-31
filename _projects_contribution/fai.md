---
title: "FAI Project"
layout: project
header:
  image: /assets/images/fai/fai.jpg
  teaser: assets/images/fai/fai.jpg
github: https://github.com/faiproject
website: https://fai-project.org/
license: GPL-2
license-url: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
documentation: https://fai-project.org/fai-guide/
community: https://github.com/faiproject/fai-project.org
tags: [ GPL-2, contribution ]
permalink: /projects/fai
---

FAI is a tool for unattended mass deployment of Linux.

It's a system to install and configure Linux systems and software packages on computers as well as virtual machines, from small labs to large-scale infrastructures like clusters and cloud environments.

RTE uses FAI on the [SEAPATH project](https://opensource.rte-france.com/projects/seapath), to create the installation media of the Debian flavor, and so RTE contributes to FAI by submitting patches for issues detected while working on the SEAPATH.

Examples:
 - [fai-cd: arm64 iso build support](https://github.com/faiproject/fai/commit/d080e1d9af8080e73a996d87e12ee2c292720132)
 - [fai-cd: add secureboot capability for AMD64](https://github.com/faiproject/fai/pull/134)
