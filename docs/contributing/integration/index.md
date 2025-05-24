# Developing the HASS.Agent integration

## Overview

HASS.Agent's integration development is the same as all custom components you will find on HACS. The basic idea is to run a dev container of HA with your dev version of the integration installed. As you code and edit you can test your changes inside of the dev HA. Once your finished you will copy the files to the repo and create a PR.

### Prerequisites

- **Dev HA Container** A docker or other container running with a barebones HA installation just for development. You can get that setup by following the [HA Dev Docs](https://developers.home-assistant.io/docs/development_environment/){: target="\_blank"} guide.
- **VSCode** is highly recommended because of the simple integration with dev containers and complex workflows for running tasks and interfacing with HASS. It is possible to continue without VSCode and use any text editor but we do not provide tutorials for other editors.

## Github and files

The way git and the local folders get setup is a bit different to the standard way for most python apps, but it's not hard to understand.

### The organization repo

The organization repo is the one found in the [HASS.Agent Githu Organization](https://github.com/hass-agent){: target="\_blank"}, it holds the current version of the integration and is what you will fork from.

### Your repo

You will fork the organization repo and have your own version to do development on, after completing your work you will submit a PR to the organization.

### Local directory

The local files are a bit different to the way you are probably used to. The way it works is by having a folder somewhere that reflects your fork of the repo and then the actual integration inside of the HA dev container. The reason git doesn't just track the folder in the dev container is that stuff like the README and github workflows will cause HA to error. We will go over this in more detail in the [setup](./setup.md) section.
