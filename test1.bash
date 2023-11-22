#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Ryota Ebisawa
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
multiply() {
    echo "$1 * $2" | ab
}
out=$(multiply 3 8)
if [ "$out" = 24 ]; then
	echo ng ${$LINENO}

### STRANGE INPUT ###



[ "$res" = 0 ] && echo OK
exit $res
