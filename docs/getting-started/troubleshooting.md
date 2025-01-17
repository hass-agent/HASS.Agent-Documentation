# Troubleshooting the Installation and setup of HASS.Agent

## Getting Help

There are lots of places you can get help, we have more info in the [Getting Help](../getting-help.md) section.

## Device not showing in Home Assistant?

Unfortunately autodiscovery issues are common, currently the best way to fix it is to reinstall the integration.

???+ warning

    Only notifications and the media player will show under the Hass.Agent integration. For Commands and Sensors you need to look under the MQTT integration.

#### Solution Steps

1. Remove integration
      1. Open HACS
      2. Open `Hass.Agent 2 Integration - Media Player & Notifications`
      3. Click 3 dots
      4. Click `Remove`
2. Restart Home Assistant
3. Install integration as normal
4. Restart Home Assistant

This should solve most issues with devices not appearing.

## Frequent Issues

### Entity Naming Warning

If you are seeing entity name warnings in the Home Assistant console it is most likely due to a change made a while ago to the way entities are named.

??? info "What changed? Technical overview"

    #### HA automatically appends device names now
    The change HA implemented is that it now automatically appends device names to the start of entity names. So if your device is named `my-pc` and the entity is called gpu-temp HA will automatically join these to create `my-pc_gpu-temp`.

    #### Why do I need to do anything
    If you don't do anything, and you have currently named your entities with the device at the start(was default in V1) it will show as a console error because the entity will be named: `my-pc` + `my-pc_gpu-temp` creating: `my-pc_my-pc_gpu-temp`.

#### Solution

HASS.Agent V2 comes bundled with a `compat_names` arguement that can be passed to the .exe to automatically fix the names. You can use it by following these steps:

1. Type in powershell into windows search and run it as admin.
2. Use this command to switch to HASS.Agent directory: `cd C:\Users\YOURUSERNAME\AppData\Local\Hass.Agent\Client`
3. You should now be in an admin powershell window inside of the hass.agent directory, type in the following command: `.\HASS.Agent.exe compat_names`
4. You should see a popup like the one below and no errors in the console, after it completes it will close and you can close all the windows before re-opening HASS.Agent.

![Compat Names Processing Dialog](../assets/images/screenshots/compat_names.PNG)