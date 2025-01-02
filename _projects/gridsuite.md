---
title: "GridSuite"
category: "rte"
show-title: false
layout: project
excerpt: "GridSuite is a suite of apps to operate and design electrical grids."
header:
    image: /assets/images/gridsuite/logo_gridsuite.png
    teaser: assets/images/gridsuite/logo_gridsuite.png
github: https://github.com/gridsuite
website: https://www.gridsuite.org/
license: MPL 2.0
license-url: https://www.mozilla.org/en-US/MPL/2.0/
documentation:  https://github.com/gridsuite/gridsuite.github.io/wiki
community: https://gridsuite.slack.com
tags: [MPL2.0]
---

GridSuite is a suite of apps to run and study power systems. Its key features include:

- Importing and exploring data, setting up groups of equipments to be used in many different studies.
- Studying networks: visualizing, searching and navigating electrical data or simulation results.
- Exploring effects of modifications on simulation results, comparing network states.

You can use the apps to:
- GridExplore: setup and organize all of your data.
- GridStudy: study one network by running different kind of simulations on it.

# GridExplore
GridExplore allows you to import your data and set up your explorations with filters or contingency lists:

 - import network cases.
 - create network studies from these cases.
 - create filters. They allow to target some elements of a network for operations like network modifications. Filters can be created by explicitly listing network equipments ids, or by generic filter conditions based on electrical attributes of the equipments.
 - create contingency lists. They allow to define the scope of a security analysis. They can be created by the same generic conditions as filters, or by an even more flexible arbitrary groovy script.

# GridStudy
GridStudy is the place to visualize either on a geographical map or on single line diagrams one imported network case, and explore the effects of network modifications on power flows or other kind of analyses (security analysis, sensitivity analysis, short-circuit analysis, dynamic simulation analysis and more to follow).

The Map tab allows you to:
 - Search for equipments.
 - Display single line diagrams of substations or voltage level.
 - Display network area diagrams.
 - Navigate to substations and voltage level in the geographical map.
 - View power flows (MW, MVar) directly on the geographical map or in the single line diagrams.
 - Create network variations in trees that allows sharing common modifications and visualize nodes in the tree. Modification may be equipment value modifications, topology changes or equipment creations or deletions. 

The Spreadsheet tab allows you to:
 - Search and visualize network equipments on the table tab.
 - Create network modifications by setting values directly in the table.

The Results tab allows you to analyze simulations results in the results tabs.

The Logs tab allows you to read network reports generated during the import or during the execution of simulations.

Contact us!
