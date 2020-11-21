#!/bin/sh

if [[ -z $2 ]] && [[ -z $3 ]];
then
  mihari $1
elif [[ -z $3 ]];
then
  mihari $1 "$2"
else
  mihari $1 "$2" $3
fi

