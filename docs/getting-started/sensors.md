# Getting Started with Sensors

One of the core features of HASS.Agent is the ability to send data about your pc to home asssistant for use in automations and dashboards. To get started with sensors you will want to open the "Sensors" tab of HASS.Agent.

## Creating your first sensor

#### Required properties

1. **TYPE:** Select the type of sensor from the left, there are many options available, a full description is available in the [setup](../setup/sensors.md) guide.
2. **Name:** Enter the name for the entity in HA, this is the entity id so it must not contain spaces.
3. **Update Interval:** Sets the interval for how often the sensor updates, the recommended value is usually fine.

???+ example

    Here is the config for a sensor that monitors the gpu temperature.
    ![Image of the config](../assets/images/screenshots/sensor-new.png)

#### Extra config <small>optional</small>

- **Friendly Name:** Add a "friendly name" that shows up in dashboards instead of the id, can have any normal characters.

??? example "Friendly Name of "Gpu Temp" "

    ![Image of the quick action](../assets/images/screenshots/sensor-friendly-name.png)

- **Availability check:** Enable/Disable availability check, this tells HA whether to check if the computer is online before grabbing the last state. If you want your sensor to always display last state even if the computer has been off for a while turn this on.

## Using your sensor

After clicking "Store and Activate" the sensors should be immediately picked up by Home Assistant, you can find them in any place you would normally find them. Each sensor/command will be attached to the mqtt integration under the name of your computer. You can also search for it in the entities page found below.

[![Open MQTT entities in My Homeassistant](https://my.home-assistant.io/badges/entities.svg)](https://my.home-assistant.io/redirect/entities/){: target="\_blank"}

You can use these entities any way you normally would, yaml or interface. Note that the entity id is the "Name" you set in the sensor config.

## Further Reading

<div class="grid cards" markdown>

- :material-remote-tv: **[Quick Actions]** – Interact with homeassistant entities and scripts from your taskbar or a hotkey!
- :octicons-git-merge-24: **[Commands]** – Create commands homeassistant can run to do things on your computer!
- :material-bell-ring: **[Notifications]** – Send notifications from homeassistant, including actions and images!
- :material-cast: **[Media Player]** – Manage media on your computer and send text to speech!
- :material-file-cog: **[Other Features]** – For a guide on all the features and config options in HASS.Agent.

</div>

[Quick Actions]: ./quick-actions.md
[Commands]: ./commands.md
[Notifications]: ./notifications.md
[Media Player]: ./media-player.md
[Other Features]: ../setup/index.md
