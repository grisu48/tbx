# Define the names/tags of the container
#!BuildTag: containers:toolbox

FROM opensuse/tumbleweed
# Define labels according to https://en.opensuse.org/Building_derived_containers
# labelprefix=org.opensuse.ph03nix/containers/toolbox

LABEL maintainer="phoenix"
LABEL description="Upgraded toolbox container"

LABEL org.opencontainers.image.title="phoenix' toolbox container"
LABEL org.opencontainers.image.description="Custom toolbox container for phoenix"
LABEL org.opensuse.reference="registry.opensuse.org/ph03nix/containers/toolbox:%PKG_VERSION%.%RELEASE%"
LABEL org.openbuildservice.disturl="%DISTURL%"
LABEL org.opencontainers.image.created="%BUILDTIME%"
# endlabelprefix

## Install required tools and clear cache
RUN zypper in -y parted nmap tcpdump telnet htop iftop iotop atop btop sysstat iproute2 pv progress hex && zypper clean -a && rm -rf /var/cache/*

