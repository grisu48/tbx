# tbx

phoenix' own toolbox container. This is just a Tumbleweed container with additional privileges and pre-installed (debugging) packages because I got annoyed by the limited package selection in `toolbox` on some minimal distributions.

This project is mainly a wrapper around my own [toolbox](registry.opensuse.org/home/ph03nix/containers/tumbleweed/containers:toolbox) container from [OBS](https://build.opensuse.org/package/show/home:ph03nix:containers/toolbox). See the attached [Dockerfile](Dockerfile) for how it works.

## Usage

To create and enter the custom toolbox container, just run `tbx`. This will create a new container and put attach to it.

```
Usage: ./tbx COMMAND
COMMANDS:
  start            Start and attach to container (default)
  stop             Stop the container
  status           Show the current container status
  attach           Attach to the running container
  shell            Fork a new (bash) shell in an already running container
  rm               Delete the container
  create           (Re)-create the container
  update           Update the container
```

### Install

To install the script to `$HOME/bin`, do

    make install
