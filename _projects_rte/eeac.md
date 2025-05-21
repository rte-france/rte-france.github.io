---
title: EEAC
layout: project
excerpt: "Implementation of the *Extended Equal Area Criterion* to analyze the transient stability in transmission networks."
header:
    image: # the image / logo shown on the project page (please try to use SVG format)
    teaser: # a small thumbnail shown on the home page (please try to use SVG format)
github: https://github.com/rte-france/extended-equal-area-criterion
license: MPL 2.0
license-url: https://www.mozilla.org/en-US/MPL/2.0/
tags: [MPL2.0]
permalink: /projects/eeac
---

To ensure the secure operation of the power system,
TSOs have to identify and prevent potential critical scenarios by offline analyses of a few dangerous ones.
These days, due to increased uncertainties in electrical power systems, the number of these critical scenarios
is increasing tremendously, calling for fast TSA techniques in order to screen the contingency list and detect 
the faults that may be actual threats to the system. 

The EEAC method was proposed in the 1980s and 1990s as a substitute for time-domain simulation for transmission system operators to provide fast transient stability analysis with the limited computational power of those days. For  of a multi-machine power system, the Extended Equal Area Criterion (EEAC) method
applies the classic Equal Area Criterion concept to an approximate one-machine infinite bus equivalent
of the system to find the critical clearing angle. The system critical clearing time can then be obtained
by numerical integration of OMIB equations. 

The EEAC method consists of four main stages:  
- Critical clusters identification to identify the critical machines and to form a number
of possible critical clusters of synchronous machines. It can be based on acceleration, composite, 
during-fault trajectory, or (post-fault) trajectory criteria.
- OMIB model formation for each CC, it can be of type zero offset OMIB (ZOOMIB), constant offset OMIB (COOMIB), or dynamic OMIB (DOMIB).
- Equal Area Criterion for calculation of the critical clearing angle of each OMIB equivalent model
- Numerical integration of each OMIB equation to find the critical clearing time corresponding to the OMIB CCA that can be based on Taylor series or numerical integration.

Finally, EEAC selects the critical cluster with the smallest critical clearing time as the true critical cluster.