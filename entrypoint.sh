#!/bin/sh

if [[ -z $2 ]];
then
  mihari $1
else
  mihari $1 $2
fi

