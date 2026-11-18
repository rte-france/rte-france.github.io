---
title: EnerGNN
layout: project
excerpt: "A Graph Neural Network library for real-life energy networks."
header:
    image: /assets/images/energnn/energnn-horizontal-color.svg
    teaser: /assets/images/energnn/energnn-horizontal-color.svg
github: https://github.com/energnn/energnn
license: MPL 2.0
license-url: https://github.com/energnn/energnn/blob/main/LICENSE
documentation: https://energnn.readthedocs.io/en/stable/
tags: graph-neural-networks, deep-learning, power-systems
permalink: /projects/energnn
---

A Graph Neural Network library based on [JAX](https://docs.jax.dev/) and [Flax](https://flax.readthedocs.io/), specifically
designed for real-life energy networks and large complex industrial infrastructures.

EnerGNN provides:

- A **Hyper Heterogeneous Multi Graph** (H2MG) data representation.
- A **Graph Neural Network** (GNN) library robust to structure variations (outages, reconfigurations, etc.).
- A clear interface to apply GNNs to custom use-cases (optimization, simulation, etc.).
