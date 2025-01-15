---
title: "Dynawo"
layout: project
excerpt: "Dynaωo is an open-source hybrid C++/Modelica suite for power system simulation."
header:
    image: /assets/images/dynawo/Dynawo-Logo-Color.svg
    teaser: assets/images/dynawo/Dynawo-Logo-Color.svg
github: https://github.com/dynawo/dynawo
website: https://dynawo.github.io
license: MPL 2.0
license-url: https://github.com/dynawo/dynawo/blob/master/LICENSE.txt
documentation: https://github.com/dynawo/dynawo?tab=readme-ov-file#documentation
community: https://github.com/dynawo/dynawo/issues
tags: [LFEnergy, MPL2.0]
---

The nature of power system dynamics is deeply evolving towards a more diverse and difficult to predict behavior due to the massive changes going on in the power system (large penetration of power-electronic based components such as Renewable Energies Sources - RES - or High Voltage Direct Current - HVDC - lines, booming use of complex automata, control strategies or smart grids). Due to this radical change from physically-driven to numerically-driven dynamics, being able to assess the system stability becomes harder but is still essential as any generalized incident will be unacceptable for the economy and the consumers. This requires to have access to a transparent, flexible, robust and easy to use suite of simulation tools that will allow to run collaborative studies in a very simple way by sharing not only the same data but also the same modeling and solving choices in an open-source frame. Such tools will ensure to get similar results and to agree upon optimal and shared actions on the system to accompany the ongoing changes in the best possible way. This analysis has motivated us to launch a new effort on simulation tools that finally ends up in the development of the Dynaωo's software.

**To achieve this goal, Dynaωo is based on two mains principles: the use of a high-level modeling language Modelica and a strict separation between modeling and solving parts.** Modelica is an equation-based, declarative and object-oriented modeling language that is easy to read and understand (the equations are written in a similar way than they are written in textbooks for example) and already used in different and various industrial sectors. Using this language enables to easily share and discuss the modeling choices done because the final models implementation is available in an understandable way, even for the end-user. It is important to mention that Modelica-based tools already exist (Dymola, OpenModelica, JModelica, etc.) but they are not efficient enough for large-scale simulation of power system, which was one of the motivation for Dynaωo. In addition to this, the Modelica language itself has some limitations that are addressed in Dynaωo by the possibility to use C++ models in a similar way than Modelica models. The second important point in Dynaωo is the strict separation between modeler and solvers - it means that the models only expose a few methods to the solvers such as the residual evaluation, the Jacobian evaluation or the zero-crossing functions or in other words that the numerical resolution method doesn't interfere in the modeling part. This feature has several advantages: it enables to easily test or use new solvers, it eases the addition of new model and it allows modeling expert not to bother about numerical difficulties and vice versa.

Join us!
