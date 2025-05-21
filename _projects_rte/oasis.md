---
title: OASIS
layout: project
excerpt: "OASIS is an implementation of a method to locate the source of forced oscillations in a power system."
header:
    image: # the image / logo shown on the project page (please try to use SVG format)
    teaser: # a small thumbnail shown on the home page (please try to use SVG format)
github: https://github.com/rte-france/oscillation-analysis-with-scada-data
license: MPL 2.0
license-url: https://www.mozilla.org/en-US/MPL/2.0/
tags: [MPL2.0]
permalink: /projects/oasis
---

Interarea oscillations are emerging as serious operational 
concerns in modern power systems because of changing 
intermittent generation patterns and unusual transmission power 
flows. Moreover, forced oscillations can interact with natural 
electromechanical modes and the resonant oscillations can be 
observed in wide regions of the interconnections 
(e.g. January 11, 2019 eastern system event). 
Source location of such resonant forced oscillation events 
is especially challenging. Oscillations may be observed using synchrophasors, 
but their installation costs and communication requirements are such that
the power grid observability using synchrophasors remains limited.

On the other hand, SCADA measurements have been in implementation
since the 1970s and they outnumber the synchrophasors. 
Specifically, SCADA measurements are available at almost every 
synchronous generator as well as at the bulk interconnection 
interface for most of the renewable generators in the power grid. 

Since SCADA data is sampled asynchronously and in a somewhat random fashion,
they may be sufficient in order to locate the source of forced
ocillation.

The code in this github project is an implementation of a statistical
method for localizing the source of forced oscillations in a power system
using SCADA data.

![Feed screen layout](/assets/images/oasis/gui_screenshot.png)