#!/bin/bash
trac-admin /project1 initenv trac postgres://tracuser:DevOps657@172.17.0.2/trac
tracd --port 80 /project1