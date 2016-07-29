#!/bin/sh

# 1. Run Rails while monitoring /app, /config
rerun --dir config,app rails s