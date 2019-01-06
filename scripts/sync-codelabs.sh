#!/bin/bash

rsync -avzh ~/coding/codelabs training
rm -rf training/codelabs/bower_components
rm -rf training/codelabs/elements