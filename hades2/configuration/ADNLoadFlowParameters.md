---
title: ADNLoadFlowParameters
layout: default
---

The `com.rte_france.powsybl.iidm.export.adn.ADNLoadFlowParameters` is an extension of the
`com.powsybl.loadflow.LoadFlowParameters` class that provides specific configuration for the load flow
mode of Hades. Read this [documentation](http://powsybl.github.io/docs/configuration/parameters/LoadFlowParameters.html)
page to learn more about load flow generic parameters.

# Optional properties

## balanceNormEpsilon
The `balanceNormEpsilon` property is an optional property that defines the epsilon on production-consumption balance. The
default value of this parameter is `-1`.

## balanceType
The `balanceType` property is an optional property that defines the type of redistribution of production/consumption
unbalance. The default value of this parameter is `PROPORTIONAL_TO_GENERATION_P_MAX`. The supported values for this
parameter are:
- PROPORTIONAL_TO_GENERATION_P: Proportionnal to generator's active power setpoint 
- PROPORTIONAL_TO_GENERATION_P_MAX: Proportional to generator's maximum active power capacity
- PROPORTIONAL_TO_LOAD: Proportional to the consumption

## computedConnectedComponentNumber
The `computedConnectedComponentNumber` property is an optional property that defines the number of the connected
components to simulate. If `computedConnectedComponentNumber` is 0, the calculation is done on all the calculable connected components.
The default value of this parameter is `1`.

## countriesToBalance
The `countriesToBalance` property is an optional property that defines the list of [ISO-3166](https://en.wikipedia.org/wiki/ISO_3166-1)
country codes used for unbalance redistribution. If this parameter is not set, there is no redistribution.

## dcCosphi
The `dcCosphi` property is an optional property that defines the `cos(φ)` used during simulation. The default value of
this parameter is `1`.

## dcMode
The `dcMode` property is an optional property that defines if the DC parameters should be pass to Hades. The default
value of this parameter is `false`.

## dcUseTransformerRatio
The `dcUseTransformerRatio` property is an optional property that defines if ratio of transformers should be used in the
flow equations. The default value of this parameter is `false`.

## dcVoltageCoeff225
The `dcVoltageCoeff225` property is an optional property that defines the multiplication factor of the nominal voltage
for 225 kV voltage level. The default value of this parameter is `1.0`. If this parameter is set to `-1`, the nominal
voltages are used.

## dcVoltageCoeff400
The `dcVoltageCoeff400` property is an optional property that defines the multiplication factor of the nominal voltage
for 400 kV voltage level. The default value of this parameter is `1.0`. If this parameter is set to `-1`, the nominal
voltages are used.

## dcVoltageInitMode
The `dcVoltageInitMode` property is an optional property that defines the voltage initialization mode. The default value
of this parameter is `V_NORMALISE_NDC`. The supported values for this parameter are:
- V_CALCULE: active/reactive load-flow
- V_NORMALISE_NAC: flat with reintegration of losses
- V_NORMALISE_NDC: flat

## debugMode
The `debugMode` property is an optional property that defines the level of debug. The default value of this parameter is
`NO_DEBUG`. The supported values for this parameter are:
- NO_DEBUG: no debug information
- ES_LF: debug for load-flow
- ES_AS: debug for security analysis
- ETATS_INTERMEDIAIRES: debug the intermediate states

## detectPermanentLimitViolation
The `detectPermanentLimitViolation` property is an optional property that defines if Hades has to detect current violations
for permanent limit if the equipments has temporary limits. The default value of this parameter is `false`.

## limitReductions
The `limitReductions` property is an optional property that defines the limit reductions for permanent and temporary
limits for a given range of voltage. See the [ADNLimitReductionsParameters](ADNLimitReductionsParameters.md) page for
more details.

## logLevel
The `logLevel` property is an optional property that defines the log level. The default value of this parameter is `DEBUG`.
The supported values for this parameter are:
- PAS: minimal logging level
- EXPERT: expert logging level
- DEBUG: debug logging level

## luFactorizationMode
The `luFactorizationMode` property is an optional property that defines the LU factorization implementation to use. The
default value of this parameter is `RLU`. The supported values for this parameter are:
- RLU: RTE LU factorization implementation
- KLU: SuiteSparse LU factorization implementation

## maxRealisticVoltage
The `maxRealisticVoltage` property is an optional property that defines percentage of maximum realistic voltage regarding
the nominal voltage. The default value of this parameter is `150`.

## minBusesNbInConnectedComponent
THe `minBusesNbInConnectedComponent` property is an optional property that defines the minimum number of buses in a
connected component to be computed. The default value of this parameter is `1`.

## minRealisticVoltage
The `minRealisticVoltage` property is an optional property that defines percentage of minimum realistic voltage regarding
the nominal voltage. The default value of this parameter is `50`.

## nbMaxIterations
The `nbMaxIterations` property is an optional property that defines the maximum number of iterations in the load flow. The
default value of this parameter is `-1`.

## nbMaxVoltageRegulationSwitch
The `nbMaxVoltageRegulationSwitch` property is an optional property that defines the maximal number of allowed PV-PQ
switches. The default value of this parameter is `-1`.

## nbThreads
The `nbThreads` property is an optional property that defines the number of threads used during simulation. The default
value of this parameter is `1`.

## normEpsilon
The `normEpsilon` property is an optional property that defines the criterion of Newton-Raphson convergence. The default
value of this parameter is `-1`.

## oldJacobian
The `oldJacobian` property is an optional property that defines the way to generate the Jacobian matrix. Use `false` to
have a human readable Jacobian matrix or `true` to increase performances. The default value of this parameter is `false`.

## reactiveCapabilityCurveWithMoreThanThreePoints
The 'reactiveCapabilityCurveWithMoreThanThreePoints' property is an optional property that proposes an approximation for generators which reactive capacibility curve has more than three (P, Qmin, Qmax) points. By default, an expection is thrown because the simulator can not deal with reactive capability curve with more than 3 points. The supported values are:
- INFINITE_DIAGRAM: the curve is replaced by an infinite diagram
- MIN_MAX_POINTS_DIAGRAM: the curve is replaced by a minimum value (in fact the minimal Q of the curve) and a maximum value (in fact the maximum of the curve)

## slackNodeDeterminationMode
The `slackNodeDeterminationMode` property is an optional property that defines the voltage range in which the slack node
can be chosen. The default value of this parameter is `BILAN_400`. The supported values for this parameter are:
- BILAN_400: the slack node can be chosen on 360-450 kV
- BILAN_225_400: the slack node can be chosen on 180-420 kV

## svcRegulation
The `svcRegulation` property is an optional property that defines if the SVCs are simulated. The default value of this
parameter is `true`.

## transformerVoltageControlSimulationMode
The `transformerVoltageControlSimulationMode` property is an optional property that defines the method of simulation of
tap changers in the load flow. The default value of this parameter is `SIMU_REG_HORS_NR`. The supported values for this
parameter are:
- SIMU_REG_HORS_NR: SVCs are simulated outside the Jacobian
- SIMU_REG_DANS_NR: SVCs are simulated in the Jacobian (experimental)
- SIMU_REG_HORS_LF: SVCs are simulated in an external loop (experimental)

## writeState
The `writeState` property is an optional property that defines if debug files should be exported. The default value of
this parameter is `false`.

## hvdcAcEmulation
The `hvdcAcEmulation` property is an optional property that defines if AC emulation is simulated. The default value of
this parameter is `true`.

# Example
This is an example of a loadflow parameters file with the `ADNLoadFlowParameters` extension:
```json
{
  "version" : "1.0",
  "voltageInitMode" : "PREVIOUS_VALUES",
  "transformerVoltageControlOn" : true,
  "phaseShifterRegulationOn" : false,
  "noGeneratorReactiveLimits" : true,
  "specificCompatibility" : false,
  "extensions" : {
    "ADNLoadFlowParameters" : {
      "dcMode": false,
      "svcRegulationOn" : true,
      "balanceType" : "PROPORTIONAL_TO_GENERATION_P_MAX",
      "countriesToBalance" : ["FR", "BE"],

      "dcVoltageInitMode" : "V_NORMALISE_NDC",
      "dcApproxType" : "COURANT_CONTINU",
      "dcCosphi" : 0.3,
      "dcVoltageCoeff400" : 1.05,
      "dcVoltageCoeff225" : 1.02,
      "dcUseTransformerRatio" : false,

      "transformerVoltageControlSimulationMode" : "SIMU_REG_DANS_NR",
      "nbMaxIterations" : 15,
      "nbMaxVoltageRegulationSwitch" : 3,

      "logLevel" : "DEBUG",
      "normEpsilon" : 0.01,
      "balanceNormEpsilon" : 0.1,
      "computedConnectedComponentNumber" : 1,
      "minBusesNbInConnectedComponent" : 5,
      "nbThreads" : 1,
      "slackNodeDeterminationMode" : "BILAN_400",
      "maxRealisticVoltage" : 120,
      "minRealisticVoltage" : 80,
      "detectPermanentLimitViolation" : false,

      "writeState" : false,
      "oldJacobianComputation" : false,
      "debugMode" : "NO_DEBUG",
      "luFactorizationMode" : "KLU",
      "limitReductions": [
        {
          "minVoltage": 250.0,
          "maxVoltage": 450.0,
          "permanent": 1.0,
          "temporaries": [
            {
              "minDuration": 0.0,
              "maxDuration": 300.0,
              "reduction": 0.95
            },
            {
              "minDuration": 300.0,
              "maxDuration": 600.0,
              "reduction": 0.98
            }
          ]
        },
        {
          "minVoltage": 150.0,
          "maxVoltage": 250.0,
          "permanent": 1.0,
          "temporaries": [
            {
              "minDuration": 0.0,
              "maxDuration": 300.0,
              "reduction": 0.95
            },
            {
              "minDuration": 300.0,
              "maxDuration": 600.0,
              "reduction": 0.98
            }
          ]
        }
      ],
      "hvdcAcEmulation" : true
    }
  }
}
```
