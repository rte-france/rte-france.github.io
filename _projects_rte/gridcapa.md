---
title: "GridCapa"
layout: project
excerpt: "GridCapa is an app to run capacity calculation processes."
header:
    image: /assets/images/gridcapa/logo-gridcapa.png
    teaser: /assets/images/gridcapa/logo-gridcapa.png
github: https://github.com/farao-community
website: https://farao-community.github.io/
license: MPL 2.0
license-url: https://www.mozilla.org/en-US/MPL/2.0/
documentation:  https://powsybl.readthedocs.io/projects/openrao/en/latest/castor/applications.html
community: https://github.com/farao-community/.github/blob/master/CONTRIBUTING.md
tags: [MPL2.0]
---

GridCapa is an app used to run capacity calculation processes on the European electric network.

It participates in operational processes on several European capacity calculation regions (CCR) run by Regional Coordination Centres (RCC):
- Italy North CCR and South-Western Europe (SWE) CCR, where several processes are run internally with GridCapa with the Net Transfer Capacity Method (NTC) for day-ahead and intraday capacity calculation.
- Core CCR, where a process is run externally for the day-ahead capacity calculation with the Flow-Based (FB) method. 

It is also used by RTE to ensure the validation of the compliance with the 70% criterion of the Clean Energy Package, adopted in 2019 by the European Union.  

Its key features include:
- Importing data, may it be generic (merged GLSK, merged CRAC, CGM) or specific to a CCR in several formats (including CIM).
- Running an optimisation of the total transfer capacity (TTC) through a dichotomy process based on Remedial Action Optimisation (RAO) computation from OpenRAO, taking into account the specificities of the CCR in real time or retrospectively.
- Running additional analyses, such as angle monitoring or voltage check.
- Exporting output networks and result files in several formats (including CIM).

Contact us!
