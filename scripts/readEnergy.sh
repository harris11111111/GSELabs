#!/bin/bash
ENERGYFILE=/sys/class/powercap/intel-rapl:0/energy_uj
start=$(cat $ENERGYFILE)
$@
finish=$(cat $ENERGYFILE)
let uj=finish-start
echo Energy consumed: ${uj} microJoules

