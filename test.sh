#!/bin/sh
set -e

bin/crontab -l | grep docker
