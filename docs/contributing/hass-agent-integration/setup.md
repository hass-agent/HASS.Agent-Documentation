# Setting up the local workspace for the integration

## Cloning and forking the repo

1. Start off by going to the [HASS.Agent Integration](https://github.com/hass-agent/integration){: target="\_blank"} repo and creating your own fork.
2. Clone the files to a directory on your computer
3. Copy the `custom_components` directory
4. Open your [dev container](#dev-container) files
5. Paste the `custom_components` directory into the `.config` directory
6. [Start](#start-ha) the dev container

### Finishing up

You can verify this has worked by going to the integrations page and looking for HASS.Agent Integration

## Reference

### Dev Container

#### Open the container to view files

If you open up the vscode project with your dev HA you will automatically be opened to the dev container's files.

#### Start HA

To start HA in VSCode you can use ++ctrl+shift+p++, and then search for `run task` and then search for `run home assistant core`. This will startup the container on the port(default is 8123)
