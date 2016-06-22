#!/bin/sh

set -x
set -e -u

_main() {
	cat version/number > develop/README.md
	git -C develop add README.md
	git -C develop add README.md
	git -C develop -c user.name="ORCA Bot" -c user.email="sbjesse@gmail.com" commit -m "bump version to $(cat version/number)"
	git clone --bare develop output
}

_main "$@"
