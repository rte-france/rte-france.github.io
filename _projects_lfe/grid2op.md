---
title: "Grid2op"
layout: project
excerpt: "Grid2Op a testbed platform to model sequential decision making in power systems."
header:
    image: /assets/images/grid2op/grid2op_logo.svg
    teaser: /assets/images/grid2op/grid2op_logo.svg
github: https://github.com/Grid2op
website: https://grid2op.readthedocs.io/en/latest/
license: MPL 2.0
license-url: https://github.com/Grid2op/grid2op/blob/master/LICENSE.md
documentation: https://grid2op.readthedocs.io/en/latest/
community: https://discord.gg/cYsYrPT
tags: [MPL2.0]
permalink: /projects/grid2op
---


Grid2op (Grid To Operate) is an open-source library written mainly in python. It's main purpose is the 
study of sequential decision making in power system. It can be seen as way to "gamify" the real time grid operations.

One of the major aim of the grid2op project is to make it easy to set up experiments and assess how well a given "strategy" (meaning a suite of different actions taken one after another) is performing on operating a given powergrid. 

The core grid2op package is the entry point to a whole eco-system, which includes different "modules" for studying in depth some "strategies" (`grid2viz`), use some state-of-the art solvers (`pypowsybl2grid`), the ability to generate new environments (in particular time series, `chronix2grid`) and list of "strategies" already proven to work on some cases (`l2rpn-baselines`, `grid2op-milp-agent`, `learningtoalert`) :

- [chronix2grid](https://github.com/Grid2op/chronix2grid) is the package that we use to generate "time series" that are themselves used in grid2op environment. They provide load and generation for each time step of the grid during the entire episode.
- [grid2game](https://github.com/Grid2op/grid2game) is a graphical user interface that allows real human to "play" the grid2op and to act as a grid2op agent, allowing them to find good strategies.
- [grid2op-milp-agent](https://github.com/Grid2op/grid2op-milp-agent) is an example of a grid2op agent that is based on linear optimisation and is able to perform topological actions.
- [grid2viz](https://github.com/Grid2op/grid2viz) is another graphical user interface that allows people to inspect how a grid2op agent has performed when evaluated on a given set of scenarios. It also allows to easily compare an agent with a baseline.
- [l2rpn-baselines](https://github.com/Grid2op/l2rpn-baselines) is pacakge that aims at providing code example to get started in the training of agent able to control a powergrid for some reinforcement learning framework.
- [lightsim2grid](https://github.com/Grid2op/lightsim2grid) is a grid2op "backend" that is a port of Pandapower in c++ and is optimized for speed and usability in grid2op
- [pypowsybl2grid](https://github.com/Grid2op/pypowsybl2grid) is another grid2op "backend", currently under heavy development. It aims at bringing all the power of the powsybl framework (including its capacity to simulate in great detail a powergrid) into the grid2op ecosystem
- [LearningToAlert](https://github.com/Grid2op/LearningToAlert) provides an algorithm to "solve" part of the grid2op actions (sending alert at the right time to a possible human operator)
PowSyBl (Power System Blocks) is an open-source library written in Java, dedicated to electrical grid modeling, visualization and simulation. The power system blocks may be used through Python scripts for quick operations, but also be assembled to build state-of-the-art applications.

