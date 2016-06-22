#!/bin/sh

set -x
set -e -u

_main() {
	git -C ours -c user.name="ORCA Bot" -c user.email="sbjesse@gmail.com" pull ../theirs
	git clone ours merged
}

_main
