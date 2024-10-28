# Installation

HASS.Agent consists of two parts: the client/Windows app and the Home Assistant integration. You will need to install and configure both of these to use most of HASS.Agent's features.

!!! info "Migrating from pre-2.0.0?"

    If you already have HASS.Agent installed from before 2.0.0 checkout the section at the bottom for [information](#migration-from-pre-200) on migrating.

## Prerequisites

- **Home Assistant:** Ensure that your Home Assistant version is newer than `2023.6.0`. If you need help with Home Assistant, refer to the [official documentation](https://www.home-assistant.io/installation/){: target="\_blank"}.
- **MQTT:** Set up an MQTT broker and install/configure the MQTT add-on in Home Assistant. A simple guide for MQTT setup can be found [here](https://www.youtube.com/watch?v=dqTn-Gk4Qeo){: target="\_blank"}.
- **Windows 10/11:** HASS.Agent supports Windows 10 and 11. Older versions may work, but functionality is not guaranteed.

??? question "I don't want to install or use MQTT, can I still use HASS.Agent?"

    You don't **have** to have MQTT to use HASS.Agent; however, most features rely on it for bidirectional communication. Without MQTT, only Quick Actions will work.

## Installing HASS.Agent

To get started with installing HASS.Agent, follow these steps:

1. Download the latest installer from [here](https://github.com/hass-agent/HASS.Agent/releases/latest/download/HASS.Agent.Installer.exe).
2. Open the installer and follow the on-screen instructions.
3. **Optional:** The installer allows you to copy the configuration from the previously installed version of HASS.Agent (Pre-2.0.0).

## Installing the Home Assistant Integration

???+ question inline end "I don't want to use the HASS.Agent integration at all"

    You do not **have** to use the integration however you will lose access to the Media Player and Notification features

After installing HASS.Agent on your PC, follow these steps to install the Home Assistant integration:

1. Ensure you have HACS installed. If not, follow the installation guide [here](https://hacs.xyz/docs/setup/download){: target="\_blank"}.
2. Click the button below to install the HASS.Agent integration.

[![Add HACS integration to My Homeassistant](https://my.home-assistant.io/badges/hacs_repository.svg)](https://my.home-assistant.io/redirect/hacs_repository/?owner=hass-agent&repository=HASS.Agent-Integration){: target="\_blank"}

??? question "I don't want to install HACS, can I still install the HASS.Agent integration?"

    Yes, it is possible to install the integration without HACS; however, it is more difficult. Find more information [here](./other-installs.md/#installing-the-integration-without-hacs).

## Finishing up

After installing both the integration and client/Windows app, proceed to the initial setup and configuration.

???+ info

    After installation, you can delete the `HASS.Agent.Installer.exe`.

## Migration from pre-2.0.0

If you have HASS.Agent from before 2.0.0 you can follow the steps below to migrate to the new one.

### Take backups <small>optional</small>

If you really don't want to lose your previous config you can take a backup of your config by copying the entirety of the config folders somewhere else on your computer. By default they are stored in these 2 folders:

```
Main Config
%appdata%\LAB02 Research\HASS.Agent\config

Satellite Config
C:\Program Files (x86)\LAB02 Research\HASS.Agent Satellite Service\config
```

### Install 2.0.0+

Install the latest hass.agent client by following the steps [above](#installing-hassagent), make sure to tick the option to migrat config at the end.

There is no need to do anything to the integration, as long as you have the latest version from HACS it will work.

### Remove old HASS.Agent <small>optional</small>

There is no need to have the old HASS.Agent installed so you can now remove it from settings or control panel. It will be called "HASS.Agent" whereas the new one is called "HASS.Agent 2".
