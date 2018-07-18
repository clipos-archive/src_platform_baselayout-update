#!/bin/sh
# SPDX-License-Identifier: LGPL-2.1-or-later
# Copyright © 2007-2018 ANSSI. All Rights Reserved.

action=$1
prefix=$2

case $action in
	-l)
		;;
	-u)
		;;
	*)
		echo "Unsupported action $action" >&2
		;;
esac

if test -d ${prefix}/etc/verictl.d; then
	cat ${prefix}/etc/verictl.d/* | \
		/sbin/verictl $action -f -
fi
