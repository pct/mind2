#!/bin/sh
find . -type f -name '*~' -delete
roots clean
roots compile
pkill roots
roots watch
