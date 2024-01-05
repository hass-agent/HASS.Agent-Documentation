# Setting up the media player

## Installing the media player

As long as you have installed everything required on the [installation page](./installation.md) then you are a good to go. The 2 main requirements are the integration and HASS.Agent itself.

## Using the media player

This is as simple as using it how you would anywhere else, you can add it to dashboards to see currently playing music or videos, and you can use Text-to-speech from the dashboard or from yaml as normal. If you want to test out text-to-speech you can open up the services dev tool and fill in the following properties:

[![Open your Home Assistant instance and show your service developer tools.](https://my.home-assistant.io/badges/developer_services.svg)](https://my.home-assistant.io/redirect/developer_services/)

- **Service:** Any text to speech service, I used the default tts.speak.
- **Entity:** Your pc name, it should be autocompleted.
- **Message:** Any message you want sent to the computer as audio.

### This is what it should look like

![Screenshot of the text-to-speech service call](../assets/images/screenshots/text-to-speech.png)

## Further Reading

<div class="grid cards" markdown>

- :material-remote-tv: **[Quick Actions]** – Interact with homeassistant entities and scripts from your taskbar or a hotkey!
- :material-radar: **[Sensors]** – Send data from your computer to homeassistant to create automations!
- :octicons-git-merge-24: **[Commands]** – Create commands homeassistant can run to do things on your computer!
- :material-bell-ring: **[Notifications]** – Send notifications from homeassistant, including actions and images!
- :material-file-cog: **[Other Features]** – For a guide on all the features and config options in HASS.Agent.

</div>

[Quick Actions]: ./quick-actions.md
[Sensors]: ./sensors.md
[Commands]: ./commands.md
[Notifications]: ./notifications.md
[Other Features]: ../setup/index.md
