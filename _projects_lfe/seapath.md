---
title: "Seapath"
layout: project
excerpt: "Seapath helps create and manage a cluster of virtual machines optimized for real-time workloads"
header:
    image: /assets/images/seapath/seapath.svg
    teaser: assets/images/seapath/seapath.svg
github: https://github.com/seapath
website: https://lfenergy.org/projects/seapath/
license: Apache 2.0
license-url: https://www.apache.org/licenses/LICENSE-2.0
documentation:  https://lf-energy.atlassian.net/wiki/spaces/SEAP
community: https://lfenergy.slack.com/archives/seapath
tags: [Apache2.0]
---

Seapath helps create and manage a cluster of virtual machines optimized for real-time workloads.
SEAPATH is an acronym for Software Enabled Automation Platform and Artifacts (Therein). It is part of the LF Energy Digital Substations Special Interest Group.

Seapath has the following features:
* Ecosystem agnostic, easily used and extended by third parties
  - Hardware-agnostic: can be installed on different types of servers and architectures (x86, ARM, etc.)
  - Vendor-agnostic: a heterogeneous variety of virtual machines can be deployed and managed on the platform.
  - Open source: released under a permissive open source license (Apache-2.0), enabling effortless adoption, customization, integration into existing projects, and commercialization opportunities for users.
  - Ongoing integration with other LF Energy Projects from Digital Substations Automation Systems (DSAS) such as LF Energy CoMPAS, LF Energy FledgePOWER, and OpenSCD.
* High performance, ready for IEC 61850 applications
  - Real-time capabilities: can host applications with determinism and performance needs.
  - Time synchronization: natively support NTP and PTP (IEEE 1588) synchronizations.
* Resilience, robust for mission-critical systems
  - High availability and clustering: offers cluster functionalities to guarantee availability in case of hardware or software failures.
  - Distributed storage: data and disk images of the virtual machines are replicated and synchronized to guarantee its integrity and availability on the cluster.
  - Automatic updates: The system can be automatically updated from a remote server.
* Infrastructure as code, allowing automated and remote system management
   - Configuration: initial configuration is done using scripted tasks, ensuring exact replication of desired operations and avoiding manual errors.
   - Administration: can be easily managed from a remote machine connected to the network as well as by an administrator on site.
* Intensive testing, guaranteeing capabilities and avoiding regression
   - Continuous integration: Every development on the platform must pass more than 700 unit tests, real time tests and latency tests.
   - Testing-driven cybersecurity approach: each requirement is ensured through extensive unit tests.Seapath has the following features:

Contact us!
