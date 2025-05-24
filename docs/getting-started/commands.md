# Creating your first Command

One of the main reasons for creating HASS.Agent is the ability to use commands and control your windows pc from home assistant automations and dashboards. This guide will show you how to make your first command, after that you can checkout the in-depth setup guide to create more complex commands.

## Creating your first Command

#### Required properties

1. **TYPE:** Select the type of command from the left, there are many options available, a full description of each is available in the [setup](../setup/commands/index.md) guide.
2. **Entity Type:** Select what entitiy you want in home assistant. This can be any of the options, but only certain commands will actually return states to HA. So we recommend just using Button for most commands.
3. **Name:** Enter the name for the entity in HA, this is the entity id so it must not contain spaces.

???+ example

    Here is the config for a command that shuts down the computer.
    ![Image of the config](../assets/images/screenshots/getting-started/command-example.png)

#### Extra config <small>optional</small>

- Add a "friendly name" that shows up in dashboards instead of the id, can have any normal characters.

??? example "Friendly Name of "Fully Shutdown" "

    ![Image of the quick action](../assets/images/screenshots/getting-started/command-friendly-name.png)

- Enable/Disable availability check, this tells HA whether to check if the computer is online before grabbing the last state. If you want your sensor to always display last state even if the computer has been off for a while turn this on.

## Using your command

After clicking "Store and Activate" the commands should be immediately picked up by Home Assistant, you can find them in any place you would normally find them. Each command will be attached to the mqtt integration under the name of your computer. You can also search for it in the entities page found below.

[![Open MQTT entities in My Homeassistant](https://my.home-assistant.io/badges/entities.svg)](https://my.home-assistant.io/redirect/entities/){: target="\_blank"}

You can use these entities any way you normally would, yaml or interface. Note that the entity id is the "Name" you set in the sensor config.

To test the command you can open the entities properties and click "PRESS" and it will trigger the command to run.

## Further Reading

<div class="grid cards" markdown>

- :material-remote-tv: **[Quick Actions]** – Interact with homeassistant entities and scripts from your taskbar or a hotkey!
- :material-radar: **[Sensors]** – Send data from your computer to homeassistant to create automations!
- :material-bell-ring: **[Notifications]** – Send notifications from homeassistant, including actions and images!
- :material-cast: **[Media Player]** – Manage media on your computer and send text to speech!
- :material-file-cog: **[Other Features]** – For a guide on all the features and config options in HASS.Agent.

</div>

[Quick Actions]: ./quick-actions.md
[Sensors]: ./sensors.md
[Notifications]: ./notifications.md
[Media Player]: ./media-player.md
[Other Features]: ../setup/index.md
