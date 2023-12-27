# Other HASS.Agent Installation Methods

## Manual install of the client

### Required files

On the repo for the HASS.Agent client you will find links to all of the requirements for manually installing it as well as the latest releases. The main things you need to download are below:

- [**.NET 6:**](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.25-windows-x64-installer){:target="\_blank"} The runtime used by HASS.Agent
- [**Latest .zip for client**](https://github.com/hass-agent/HASS.Agent/releases/latest/download/HASS.Agent.zip)
- [**Latest .zip for service**](https://github.com/hass-agent/HASS.Agent/releases/latest/download/HASS.Agent.Satellite.Service.zip)

### Installing the files

Start by extracting the .zips to separate folders(We recommend extracting them to programdata but it's up to you).

??? warning "Have to be separate folders"

    If the .zips are combined there will be issues, so make sure to separate them.

1.  Open an elevated(administrator) command prompt.
2.  Use the command below to register the service in windows.
3.  Run HASS.Agent.exe to start hass.agent, you can optionally add it to the start menu and startup. Just add the HASS.Agent.exe as entries to both of those.

```batch title="Registering the service"
sc.exe create hass.agent.svc binPath= "<absolute path to HASS.Agent.Satellite.Service.exe>"
```

## Installing the integration without HACS

If you don't want to use HACS for installation of the HASS.Agent integration you can do it manually.

!!! warning

    If you choose to install the integration without HACS you will not automatically receive updates. You will have to follow these installation steps again for each update.

1. Download and extract the files in the [Integration Repo](https://github.com/hass-agent/integration/archive/refs/heads/main.zip){: target="\_blank"}.
2. Copy the `custom_components/` directory into your Home Assistant's `config/` directory.

Done! Thats it, but remember there will be no updates, so you need to re-download the file and copy again for each update of the integration. Make sure to restart Home Assistant to apply the changes.
