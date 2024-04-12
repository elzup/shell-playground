#!/usr/bin/env bash


system_profiler SPCameraDataType | grep "Model ID:" | sed 's/ *Model ID: //'

