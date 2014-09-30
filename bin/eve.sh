#!/bin/bash

WINE=wine
PREFIX=~/.PlayOnLinux/wineprefix/EVEonline

WINEPREFIX=$PREFIX $WINE explorer /desktop=eveA,4480x1080 "C:\Program Files\ccp\eve\eve.exe"
