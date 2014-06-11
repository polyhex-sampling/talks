#!/bin/bash

#S=whitenoise
#S=grid
#S=stratified
S=poisson-disk
#S=ccvt
N=4096
#N=8192

mkdir -p ${S}

stk-sampler -b -s ${S} -o ${S}/${S}_${N}.bpts -n ${N} -m 10
stk-draw-pts -i ${S}/${S}_${N}.bpts -o ${S}/${S}_${N}_dist.png
stk-zoneplate -i ${S}/${S}_${N}.bpts -o ${S}/${S}_${N}_zoneplate.png -p 2 -z 1.2553
stk-fft -i ${S}/${S}_${N}.bpts -O ${S}/${S}_${N}_fft-pow.png -R ${S}/${S}_${N}_fft-rad.png -A ${S}/${S}_${N}_fft-ani.png
