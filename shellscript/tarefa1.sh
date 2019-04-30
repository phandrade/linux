#!/usr/bin/env bash

PARAM1="$1"

if test "$PARAM1" -gt 10
then
  echo "Nome do Script: $0"
  echo "PID: $$"
fi
