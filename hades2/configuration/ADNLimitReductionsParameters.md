---
title: ADNLimitReductionsParameters
layout: default
---

# ADNLimitReductionsParameters
The [ADNLimitReductionsParameters](https://javadoc.io/doc/com.rte-france.powsybl/powsybl-rte-core/latest/com/rte_france/powsybl/iidm/export/adn/ADNLimitReductionsParameters.html)
class is used to model limit reductions for a given voltage range (inclusive). It contains a coefficient for permanent
limits and a list of coefficients for temporary limits.

## Optional properties

### maxVoltage
The `maxVoltage` property is an optional property that defines the upper bound of the [minVoltage, maxVoltage] range. The
default value of this property is `Float.MAX_VALUE`.

## minVoltage
The `minVoltage` property is an optional property that defines the lower bound of the [minVoltage, max] range. The
default value of this property is 0.

## permanent
The `permanent` property is an optional property that define the limit reduction for permanent limits. The default value
of this property is 1 (e.g. 100%). 

## temporaries
The `temporaries` property is an optional property that defines the temporary limits reductions, model by the
`ADNTemporaryLimitsParameters` class.

# ADNTemporaryLimitParameters
The `com.rte_france.powsybl.iidm.export.adn.ADNTemporaryLimitParameters` class is used to model limit reductions for
temporary limits in a given duration range (inclusive).

## Optional properties

### maxDuration
The `maxDuration` property is an optional property that defines the upper bound of the [minDuration, maxDuration] range.
The default value of this property is `Integer.MAX_VALUE`.

### minDuration
The `minDuration` property is an optional property that defines the lower bound of the [minDuration, maxDuration] range.
The default value of this property is 0.

### reduction
THe `reduction` property is an optional property that defines the limit reduction for temporary limits. The default
value of this property is 1 (e.g. 100%).
