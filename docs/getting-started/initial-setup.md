# Initial Configuration and First Run

Once you've [installed](./installation.md) HASS.Agent onto your computer you are ready to run HASS.Agent.

## Onboarding and First Run

When you open HASS.Agent for the first time it will guide you through the onboarding process to get everything setup and working. After the onboarding process is complete you can move onto the setup in Home Assistant.

### API

During onboarding, on page 3, you'll be prompted for an API token and your Home Assistant URL. Here's how to obtain an API key from your Home Assistant installation:

1. Open the [profile page](https://my.home-assistant.io/redirect/profile/){: target="\_blank"}.
2. Scroll down to Long-lived Access Tokens.
3. Click "Create Token".
4. Copy the token using the button and paste it into the HASS.Agent onboarding page.

### MQTT

For the MQTT configuration, provide your MQTT broker's username, password, URI, and port.

Here are the steps for getting the MQTT broker if you are using the mosquitto add-on in homeassistant. For other mqtt brokers you will need to checkout their own guides.

1. **Username and Password** This depends on how you have setup the Mosquitto Add-on, but assuming you have done it in the recommended way you will have created a separate Home Assistant user for the MQTT broker. If that's the case go ahead and use it's username and password for this section. If you haven't yet setup authentication for the Home Assistant Mosquitto add-on then checkout [this](https://youtu.be/dqTn-Gk4Qeo?si=pqcLDV7mNtVqzAhh&t=326){: target="\_blank"} video.
2. **IP and Port** This will be the IP/Hostname of your Home Assistant server and the port `1883`. So for most people use: `http://homeassistant.local` with port `1883`.

!!! danger "Discovery Prefix"

    The discovery prefix is an advanced feature intended for professionals. It does not identify your PC but is used by Home Assistant to locate devices. Unless you are experienced, leave it as is.

## Initial Setup in Home Assistant

After running the onboarding for HASS.Agent and [installing](./installation.md/#installing-the-home-assistant-integration) the integration you can move on to connecting your computer to Home Assistant.

#### Checklist

- [ ] HASS.Agent has been [installed](./installation.md) and the [onboarding](#onboarding-and-first-run) has been completed.
- [ ] The HASS.Agent HACS integration has been [installed](./installation.md/#installing-the-home-assistant-integration).

### Configure your computer

If you navigate to your integrations dashboard you should see your HASS.Agent PC auto-discovered and pop-up.

[![Open Integrations in My Homeassistant](https://my.home-assistant.io/badges/integrations.svg)](https://my.home-assistant.io/redirect/integrations/){: target="\_blank"}

If not you can checkout the [troubleshooting](./troubleshooting.md) steps.

#### Finish Setup

The first time Home Assistant discovers your PC it will pop-up asking you to select the room the PC is located in. After selecting the room you are ready to move on to the next step.

## Setup HASS.Agent

Now you have finished installing and configuring HASS.Agent you are ready to set it up how you want to use it. You can checkout these getting started guides for more:

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
