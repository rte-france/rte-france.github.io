---
title: EEAC
layout: project
excerpt: "Implementation of the *Extended Equal Area Criterion* to analyze the transient stability in transmission networks."
header:
    image: /assets/images/eeac/eeac_logo.svg
    teaser: assets/images/eeac/eeac_logo.svg
github: https://github.com/rte-france/extended-equal-area-criterion
license: MPL 2.0
license-url: https://www.mozilla.org/en-US/MPL/2.0/
tags: [MPL2.0]
permalink: /projects/eeac
---

To ensure the secure operation of the power system,
Transmission System Operators (TSOs) must identify and prevent potential critical scenarios through offline analyses of a limited number of dangerous cases.
Nowadays, due to increased uncertainties in electrical power systems, the number of such critical scenarios
is growing significantly. This trend calls for fast Transient Stability Assessment (TSA) techniques to efficiently screen contingency lists and detect faults that may pose real threats to system stability.

The Extended Equal Area Criterion (EEAC) method was introduced in the 1980s and 1990s as a substitute to time-domain simulations, enabling TSOs to perform rapid transient stability analyses despite the limited computational resources available at the time. For a multi-machine power system, the EEAC method applies the classical Equal Area Criterion to an approximate one-machine infinite bus (OMIB) equivalent of the system to determine the critical clearing angle. The corresponding critical clearing time is then obtained through numerical integration of the OMIB equations.

The EEAC method comprises four main stages:  
- **Critical clusters identification** to identify the critical machines and to form a number
of possible critical clusters of synchronous machines. It can be based on acceleration, composite, 
during-fault trajectory, or (post-fault) trajectory criteria.
- **OMIB model formation** for each critical cluster, it can be of type zero offset OMIB (ZOOMIB), constant offset OMIB (COOMIB), or dynamic OMIB (DOMIB).
- **Equal Area Criterion** for calculation of the critical clearing angle of each OMIB equivalent model.
- **Numerical integration** of each OMIB equation to find the critical clearing time corresponding to the OMIB critical clearing angle that can be based on Taylor series or numerical integration.

Finally, the EEAC method selects the critical cluster with the smallest critical clearing time as the true critical cluster. This value serves as an approximation of the critical clearing time that would be obtained through a full time-domain simulation.