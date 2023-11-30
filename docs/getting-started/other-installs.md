# Other HASS.Agent Installation Methods

## Manually installing HASS.Agent

Installing

## Installing the integration without HACS

If you don't want to use HACS for installation of the HASS.Agent integration you can do it manually.

!!! warning

    If you choose to install the integration without HACS you will not automatically receive updates. You will have to follow these installation steps again for each update.

1. Download and extract the files in the [Integration Repo](https://github.com/hass-agent/integration/archive/refs/heads/main.zip){: target="\_blank"}.
2. Copy the `custom_components/` directory into your Home Assistant's `config/` directory.

Done! Thats it, but remember there will be no updates, so you need to re-download the file and copy again for each update of the integration. Make sure to restart Home Assistant to apply the changes.
