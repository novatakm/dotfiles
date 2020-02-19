#!/bin/bash

usage() {
    echo "Usage: $0"
}

tmp_fn=$$

while getopts ho: OPT
do
    case $OPT in
	h)
	    usage
	    exit
	    ;;
	o)
	    OPTION="$OPTARG"
	    ;;
	\?)
	    usage
	    exit
	    ;;
    esac
done
