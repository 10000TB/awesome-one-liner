#!/usr/bin/env sh
# Coopyright:    https://github.com/10000TB/awesome-one-liner
# Author:        10000tb
# Last Updated:  July 16, 2019
#
# This script install docker engine in any of the platform
# supported by docker.
#
# Suppoerted platform: centos

SUPPORTED_PLATFORM=(
    'centos'
    'ubuntu'
    )

function get_platform() {
    # Decides platform.
    #
    # There maybe more technically right way to decide platform.
    # But for convenience and enforcing requisites on having certain
    # package installer present, we in order test if `yum` present to
    # decide if it is centos.
    #
    # params: void
    # rtype: (centos, ubuntu, mac)
    if yum --help &> /dev/null ; then
        # centos.
        echo "centos"
    else:
        echo "unknown"
    fi
    echo "test"
}

function main {
    echo "installing docker..."
    local platform=$(get_platform)
    echo "platform detected: $platform"
    # Assert it is a supported platform.
    supported=$SUPPORTED_PLATFORM
    if [[ ${supported[*]} =~ ^"$platform"$ ]]; then
        echo "cool! $platform is supported"
    else:
        echo "oops! $platform is not supported"
    fi
    echo "Done!"
}

main
