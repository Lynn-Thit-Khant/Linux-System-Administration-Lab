#!/bin/bash

set -e

rsync -avz -e ssh /SharedData/ student@server.p2338813.com:/SharedData/
rsync -avz -e ssh student@server.p2338813.com:/SharedData/ /SharedData/
