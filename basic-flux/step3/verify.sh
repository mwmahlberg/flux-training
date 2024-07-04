#!/bin/bash

if [[ $GH_REPO == *"..." || -z $GH_REPO ]]; then exit 1; fi