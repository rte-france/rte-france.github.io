---
title: action-simulator
layout: default
---

# Configuration
To use Hades for remedial actions simulations, set the `load-flow-name` property of the
[load-flow-action-simulator](http://powsybl.github.io/docs/configuration/modules/load-flow-action-simulator.html) module
to `Hades2`.
**Note**: In previous Powsybl releases (before 3.0.0), this was configured in the `load-flow-factory` property with the value `com.rte_france.powsybl.hades2.Hades2Factory`.

To setup Hades, configure the [hades2](../configuration/hades2.md) module.

## YAML
```yaml
load-flow-action-simulator:
    debug: false
    ignore-pre-contingency-violations: true
    load-flow-name: Hades2
    max-iterations: 10
    
hades2:
    homeDir: /home/user/hades2-V{{ site.hades2.version }}
    debug: false
    useSax: true
```

## XML
```xml
<config>
    <load-flow-action-simulator>
        <debug>false</debug>
        <ignore-pre-contingency-violations>true</ignore-pre-contingency-violations>
        <load-flow-name>Hades2</load-flow-name>
        <max-iterations>10</max-iterations>
    </load-flow-action-simulator>
    
    <hades2>
        <homeDir>/home/user/hades2-V{{ site.hades2.version }}</homeDir>
        <debug>false</debug>
        <useSax>true</useSax>
    </hades2>
</config>
```

# Examples
The following example shows how to run a [remedial actions simulation](http://powsybl.github.io/docs/tools/action-simulator.html):
```shell
$> itools action-simulator --case-file $HOME/eurostag-tutorial.xiidm --dsl-file $HOME/actions.groovy
Loading network '$HOME/eurostag-tutorial.xiidm'
Loading DSL 'file:$HOME/actions.groovy'
Using 'loadflow' rules engine
Starting pre-contingency analysis
    Round 0
        No more violation
Starting post-contingency 'HV_line_1' analysis
    Round 0
        Violations:
+---------------+-------+---------+--------------+----------------+-----------------+-----------+----------+------------------+----------------+
| Equipment (2) | End   | Country | Base voltage | Violation type | Violation name  | Value     | Limit    | abs(value-limit) | Loading rate % |
+---------------+-------+---------+--------------+----------------+-----------------+-----------+----------+------------------+----------------+
| NHV1_NHV2_2   | VLHV1 | FR      |          380 | CURRENT        | Permanent limit | 1008.9287 | 500.0000 |         508.9287 |         201.79 |
| NHV1_NHV2_2   | VLHV2 | FR      |          380 | CURRENT        | Permanent limit | 1047.8258 | 500.0000 |         547.8258 |         209.57 |
+---------------+-------+---------+--------------+----------------+-----------------+-----------+----------+------------------+----------------+
        Rule 'apply_shedding_for_line_2' evaluated to TRUE
        Applying action 'load_shed_100'
    Round 1
        Violations:
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| Equipment (2) | End   | Country | Base voltage | Violation type | Violation name  | Value    | Limit    | abs(value-limit) | Loading rate % |
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| NHV1_NHV2_2   | VLHV1 | FR      |          380 | CURRENT        | Permanent limit | 831.3489 | 500.0000 |         331.3489 |         166.27 |
| NHV1_NHV2_2   | VLHV2 | FR      |          380 | CURRENT        | Permanent limit | 871.7283 | 500.0000 |         371.7283 |         174.35 |
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
        Rule 'apply_shedding_for_line_2' evaluated to TRUE
        Applying action 'load_shed_100'
    Round 2
        Violations:
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| Equipment (2) | End   | Country | Base voltage | Violation type | Violation name  | Value    | Limit    | abs(value-limit) | Loading rate % |
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| NHV1_NHV2_2   | VLHV1 | FR      |          380 | CURRENT        | Permanent limit | 667.6796 | 500.0000 |         167.6796 |         133.54 |
| NHV1_NHV2_2   | VLHV2 | FR      |          380 | CURRENT        | Permanent limit | 711.4252 | 500.0000 |         211.4252 |         142.29 |
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
        Rule 'apply_shedding_for_line_2' evaluated to TRUE
        Applying action 'load_shed_100'
    Round 3
        Violations:
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| Equipment (2) | End   | Country | Base voltage | Violation type | Violation name  | Value    | Limit    | abs(value-limit) | Loading rate % |
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| NHV1_NHV2_2   | VLHV1 | FR      |          380 | CURRENT        | Permanent limit | 516.0706 | 500.0000 |          16.0706 |         103.21 |
| NHV1_NHV2_2   | VLHV2 | FR      |          380 | CURRENT        | Permanent limit | 566.1081 | 500.0000 |          66.1081 |         113.22 |
+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
        Max number of iterations reached
Starting post-contingency 'HV_line_2' analysis
    Round 0
        Violations:
+---------------+-------+---------+--------------+----------------+-----------------+-----------+-----------+------------------+----------------+
| Equipment (2) | End   | Country | Base voltage | Violation type | Violation name  | Value     | Limit     | abs(value-limit) | Loading rate % |
+---------------+-------+---------+--------------+----------------+-----------------+-----------+-----------+------------------+----------------+
| NHV1_NHV2_1   | VLHV1 | FR      |          380 | CURRENT        | Permanent limit | 1008.9287 | 1000.0000 |           8.9287 |         100.89 |
| NHV1_NHV2_1   | VLHV2 | FR      |          380 | CURRENT        | Permanent limit | 1047.8258 | 1000.0000 |          47.8258 |         104.78 |
+---------------+-------+---------+--------------+----------------+-----------------+-----------+-----------+------------------+----------------+
        Rule 'apply_shedding_for_line_1' evaluated to TRUE
        Applying action 'load_shed_100'
    Round 1
        No more violation
Final result
Pre-contingency violations:
+--------+---------------+-----+---------+--------------+----------------+----------------+-------+-------+------------------+----------------+
| Action | Equipment (0) | End | Country | Base voltage | Violation type | Violation name | Value | Limit | abs(value-limit) | Loading rate % |
+--------+---------------+-----+---------+--------------+----------------+----------------+-------+-------+------------------+----------------+
Post-contingency limit violations:
+-------------+----------+---------------+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| Contingency | Status   | Action        | Equipment (2) | End   | Country | Base voltage | Violation type | Violation name  | Value    | Limit    | abs(value-limit) | Loading rate % |
+-------------+----------+---------------+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
| HV_line_1   | converge |               | Equipment (2) |       |         |              |                |                 |          |          |                  |                |
|             |          | load_shed_100 |               |       |         |              |                |                 |          |          |                  |                |
|             |          | load_shed_100 |               |       |         |              |                |                 |          |          |                  |                |
|             |          | load_shed_100 |               |       |         |              |                |                 |          |          |                  |                |
|             |          |               | NHV1_NHV2_2   | VLHV1 | FR      |          380 | CURRENT        | Permanent limit | 516.0706 | 500.0000 |          16.0706 |         103.21 |
|             |          |               | NHV1_NHV2_2   | VLHV2 | FR      |          380 | CURRENT        | Permanent limit | 566.1081 | 500.0000 |          66.1081 |         113.22 |
+-------------+----------+---------------+---------------+-------+---------+--------------+----------------+-----------------+----------+----------+------------------+----------------+
```
