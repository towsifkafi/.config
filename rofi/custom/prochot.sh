#!/bin/bash

sel=$(printf "☀️ Performance\n💤 Low Power" | rofi -dmenu -p "Power Mode »")

case "$sel" in
  "☀️ Performance") pkexec wrmsr 0x1FC 2 ;;
  "💤 Low Power") pkexec wrmsr 0x1FC 1 ;;
  *) exit 1 ;;
esac
