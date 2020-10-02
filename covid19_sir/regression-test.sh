#!/bin/sh

\rm -rf /tmp/regression-test/
mkdir /tmp/regression-test/
python3 simple-simulation.py 31415 &&\
mv scenario[123456].csv /tmp/regression-test/ &&\
mv scenario[123456].png /tmp/regression-test/ &&\
diff /tmp/regression-test/ regression-test-baseline/
