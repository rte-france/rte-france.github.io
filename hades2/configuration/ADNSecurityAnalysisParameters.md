---
title: ADNSecurityAnalysisParameters
layout: default
---

The `com.rte_france.powsybl.iidm.export.adn.ADNSecurityAnalysisParameters` is an extension of the
`com.powsybl.security.SecurityAnalysisParameters` class that provides specific configuration for the security analysis
mode of Hades. Read this [documentation](http://powsybl.github.io/docs/configuration/parameters/SecurityAnalysisParameters.html)
page to learn more about security analysis generic parameters. Read this [documentation](ADNLoadFlowParameters.md) page
to learn more about the Hades load-flow configuration.

# Optional properties

## afterContingencyBalanceEpsilon
The `afterContingencyBalanceEpsilon` property is an optional property that defines the maximum value accepted for the
unbalance at the slack node in contingency simulation. The default value for this parameter is `-1`.

## constraints
The `contraints` property is an optional property that defines if violations should be computed. The default value for
this parameter is `true`.

## fastMode
The `fastMode` property is an optional property that disable some features to improve performance. In practice, if this
parameter is set to `true`, the maximal number of allowed PV-PQ switches is set to 0. The default value for this parameter
is `false`.

## flowConstraintReference
The `flowConstraintReference` property is an optional property that defines the current limits (permanent or temporary)
to use as reference for relative variation criteria. The default value for this parameter is 0.

## minPowerTransferRatio
The `minPowerTransferRatio` property is an optional property that defines the threshold of lost MW caused by a contingency
to run a simulation for this contingency. The default value for this parameter is `3`.

## minVMaxV
The `minVMaxV` property is an optional property that defines if the minimum and maximum voltage per substations for all
contingencies should be computed. The default value for this parameter is `false`.

## powerTransferRatio
The `powerTransferRatio` property is an optional property that defines if the power transfer coefficients should be
computed. The default value for this parameter is `false`.

## worsenedFlowConstraintsDelta
The `worsenedFlowConstraintsDelta` property is an optional property that defines the worsening delta for `CURRENT`
violations. The default value for this parameter is `-1`.

## worsenedFlowConstraintsThreshold
The `worsenedFlowConstraintsThreshold` property is an optional property that defines the worsening threshold for
`CURRENT` violations. The default value for this parameter is `0.1`.

## worsenedHighVoltageConstraintsDelta
The `worsenedHighVoltageConstraintsDelta` property is an optional property that defines the worsening delta for `HIGH_VOLTAGE`
violations. The default value for this parameter is `-1`.

## worsenedHighVoltageConstraintsThreshold
The `worsenedHighVoltageConstraintsThreshold` property is an optional property that defines the worsening threshold for
`HIGH_VOLTAGE` violations. The default value for this parameter is `-1`.

## worsenedLowVoltageConstraintsDelta
The `worsenedLowVoltageConstraintsDelta` property is an optional property that defines the worsening delta for `LOW_VOLTAGE`
violations. The default value for this parameter is `-1`.

## worsenedLowVoltageConstraintsThreshold
The `worsenedLowVoltageConstraintsThreshold` property is an optional property that defines the worsening threshold for
`LOW_VOLTAGE` violations. The default value for this parameter is `-1`.

## writeNState
The `writeNState` property is an optional property that defines if the pre-contingency results should be exported. The
default value for this parameter is `true`.

# Example
This is an example of a security analysis parameters file with the `ADNSecurityAnalysisParameters` extension:
```json
{
  "version" : "1.0",
  "load-flow-parameters" : {
    ...
  },
  "extensions" : {
    "ADNSecurityAnalysisParameters": {
      "afterContingencyBalanceEpsilon": 1.0,
      "constraints": true,
      "fastMode": true,
      "flowConstraintReference": 0,
      "minPowerTransferRatio": 3,
      "minVMaxV": true,
      "powerTransferRatio": true,
      "worsenedHighVoltageConstraintsDelta": 4.0,
      "worsenedHighVoltageConstraintsThreshold": 0.1,
      "worsenedLowVoltageConstraintsDelta": 5.0,
      "worsenedLowVoltageConstraintsThreshold": 0.1,
      "worsenedFlowConstraintsDelta": -1,
      "worsenedFlowConstraintsThreshold": 0.1,
      "writeNState": true
    }
  }
}
```
