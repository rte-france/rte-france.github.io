---
title: Hades - Security analysis
layout: default
---

# Configuration
To use Hades for security analysis computations, set the `SecurityAnalysisFactory` property of the
[componentDefaultConfig](http://powsybl.github.io/docs/configuration/modules/componentDefaultConfig.html) module to
`com.rte_france.powsybl.hades2.Hades2SecurityAnalysisFactory`

To setup Hades, configure the [hades2](../configuration/hades2.md) module.

## YAML
```yaml
componentDefaultConfig:
    SecurityAnalysisFactory: com.rte_france.powsybl.hades2.Hades2SecurityAnalysisFactory
    
hades2:
    homeDir: /home/user/hades2-V5.5.1.2
    debug: false
    useSax: true
```

## XML
```xml
<config>
    <componentDefaultConfig>
        <SecurityAnalysisFactory>com.rte_france.powsybl.hades2.Hades2Factory</SecurityAnalysisFactory>
    </componentDefaultConfig>
    
    <hades2>
        <homeDir>/home/user/hades2-V5.5.1.2</homeDir>
        <debug>false</debug>
        <useSax>true</useSax>
    </hades2>
</config>
```

# Usage
The following example shows how to run a [security analysis](http://powsybl.github.io/docs/tools/security-analysis.html),
using Hades and default configuration:
```shell
$> itools security-analysis --case-file case.xiidm
Loading network '../../data/cases/recollement-auto-20180820-1430-enrichi.xiidm'
Pre-contingency violations:
+--------+----------------+---------+---------+--------------+----------------+-----------------+------------+-----------+------------------+----------------+
| Action | Equipment (4)  | End     | Country | Base voltage | Violation type | Violation name  | Value      | Limit     | abs(value-limit) | Loading rate % |
+--------+----------------+---------+---------+--------------+----------------+-----------------+------------+-----------+------------------+----------------+
|        | VL1_63KV       | VL1     | LU      |           63 | HIGH_VOLTAGE   |                 |    69,2836 |   68,0000 |           1,2836 |         101,89 |
|        | VL2_63KV       | VL2     | BE      |           63 | HIGH_VOLTAGE   |                 |    69,5663 |   68,0000 |           1,5663 |         102,30 |
|        | TR_225KV_63KV  | VL4     | DE      |          225 | CURRENT        | Permanent limit |   532,7011 |  334,2105 |         198,4906 |         159,39 |
|        | VL3_63KV       | VL3     | LU      |           63 | HIGH_VOLTAGE   |                 |    69,2934 |   68,0000 |           1,2934 |         101,90 |
+--------+----------------+---------+---------+--------------+----------------+-----------------+------------+-----------+------------------+----------------+
```

The following example shows how to run a [security analysis](http://powsybl.github.io/docs/tools/security-analysis.html),
using Hades and a [specific parameters](../configuration/ADNSecurityAnalysisParameters.md) file:
```shell
$> itools security-analysis --case-file case.xiidm --parameters-file hades-sa-parameters.json
Loading network '../../data/cases/recollement-auto-20180820-1430-enrichi.xiidm'
Pre-contingency violations:
+--------+----------------+---------+---------+--------------+----------------+-----------------+------------+-----------+------------------+----------------+
| Action | Equipment (4)  | End     | Country | Base voltage | Violation type | Violation name  | Value      | Limit     | abs(value-limit) | Loading rate % |
+--------+----------------+---------+---------+--------------+----------------+-----------------+------------+-----------+------------------+----------------+
|        | VL1_63KV       | VL1     | LU      |           63 | HIGH_VOLTAGE   |                 |    69,2836 |   68,0000 |           1,2836 |         101,89 |
|        | VL2_63KV       | VL2     | BE      |           63 | HIGH_VOLTAGE   |                 |    69,5663 |   68,0000 |           1,5663 |         102,30 |
|        | TR_225KV_63KV  | VL4     | DE      |          225 | CURRENT        | Permanent limit |   532,7011 |  334,2105 |         198,4906 |         159,39 |
|        | VL3_63KV       | VL3     | LU      |           63 | HIGH_VOLTAGE   |                 |    69,2934 |   68,0000 |           1,2934 |         101,90 |
+--------+----------------+---------+---------+--------------+----------------+-----------------+------------+-----------+------------------+----------------+
```
