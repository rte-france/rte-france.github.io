---
title: "TRM algorithm"
show-title: false
layout: project
excerpt: "TRM algorithm is a package to compute the Transmission Reliability Margin."
#header:
#  image: /assets/images/gridsuite/logo_gridsuite.png
#  teaser: assets/images/gridsuite/logo_gridsuite.png
github: https://github.com/rte-france/Transmission-Reliability-Margin-Algorithm
#website: https://www.gridsuite.org/
license: MPL 2.0
license-url: https://www.mozilla.org/en-US/MPL/2.0/
documentation:  https://github.com/rte-france/Transmission-Reliability-Margin-Algorithm/blob/main/doc/algorithm.md
#community: https://gridsuite.slack.com
tags: [MPL2.0]
---

TRM algorithm is a package that computes the Transmission Reliability Margin, aiming to be a translation in Java code of the [article 22 of the CACM regulation 2015/1222](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32015R1222#d1e2148-24-1).
The project relies heavily on the [PowSybl environment](https://www.powsybl.org/index.html).
Its key features include:

- Importing data: market-based (D2CF or DACF) and real time snapshot networks, real time GLSK and CRAC.
- Critical Network Element selection: select manually or automatically the interconnections or branches you want to study.
- Operational condition alignment: align the desired operation conditions of the market-based network with those of the real time snapshot (such as remedial actions, branch connection state, inner exchanges, etc.).
- AC sensitivity computation.
- Uncertainties computation.

You can use the package to compute the TRM, based on uncertainties and unintended deviations.

Contact us!
