#!/bin/sh

setfacl -R -m u:rte:rwx /home/rte/rte-france.github.io
exec runuser -u rte "$@"