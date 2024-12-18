---
title: OperatorFabric
show-title: false
layout: project
excerpt: OperatorFabric is a modular, extensible, industrial-strength platform for alarming and coordination processes.
header:
    image: /assets/images/operatorfabric/logo_lfe_operatorfabric.png
    teaser: assets/images/operatorfabric/logo_lfe_operatorfabric_resized.png
github: https://github.com/opfab/
website: https://opfab.github.io/
license: MPL 2.0
license-url: https://opfab.github.io/documentation/current/community/#license_and_DCO
documentation: https://opfab.github.io/
community: https://lfenergy.slack.com/channels/operator-fabric
tags: [LFEnergy, MPL2.0]
---

# A Smart Assistant For System Operators


OperatorFabric is a modular, extensible, industrial-strength platform for use in electricity, water, and other utility operations.

It aims to facilitate operational activities for utilities in two ways:

* Centralize real time business events in a single place to avoid having multiple screens/software. To do so, OperatorFabric provides 
    * event dispatching rules on a per-user basis (based on groups, organizational entities, processes, etc.)
    * event-sending endpoints for business applications 
    * a mechanism of templating to customize events rendering (using HTML5)
    * a view of the events on a timeline or a calendar 
    * storage of all the events (archive feature)
    * notifications via sounds or emails
    * possibilities to integrate screen from other applications

    
* Facilitate interactions between operational control centers:
    * Share information in real time, as pre-formatted cards that can be sent either manually by operators or automatically by external solutions.
    * Introduce pre-formatted question/response exchanges between control centers. This can be used to implement operational processes (with the notion of "last time to respond").  
    * Share events in calendar (also allowing repeating events)

In addition, the following features are available: internationalization, light/dark mode for the UI, realtime connected users supervision, authorization mechanism.

Integration with existing IT systems is an overarching concern: support of Firefox and Chromium-based browsers, docker deployment, communication with business applications via REST API or Kafka, integration with external authentication systems (via OAuth2), monitoring via Prometheus endpoints.

![Feed screen layout](/assets/images/operatorfabric/feed_screenshot.png)
