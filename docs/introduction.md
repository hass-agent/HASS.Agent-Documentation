# Introduction

This page explains the basics behind HASS.Agent: What it is and what it can do. We'll be using the abbreviation **HA** for Home Assistant, so when HA is mentioned, it refers to your Home Assistant instance.

> Tip: you can use Home Assistant's [glossary](https://www.home-assistant.io/docs/glossary/) to look up words you don't know yet.

> Tip: EverythingSmartHome's youtube video is a great guide to get you started: [Control Your Windows PC With Home Assistant!](https://www.youtube.com/watch?v=B4SnJPVbSXc). Note that it is based on an older version, so for instance the mentioned missing 'actionable notifications' are already implemented.

---

## Overview

In general, HASS.Agent is a client (_companion_) application for Home Assistant. It's being developed for Windows, with Windows 10 and 11 (fully up-to-date) in mind - previous versions or unpatched systems _may_ work.

The communication goes both ways: HASS.Agent can send data to HA, and HA can send data to HASS.Agent. In other words: you can use HASS.Agent to control and inform HA, and you can use HA to control HASS.Agent.

Globally, these are the functionalities:

| Function                                | Description                                                                                                                          |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Commands](#commands)                   | Control your PC from HA.<br/>Example: lock your session, open notepad or emulate a keypress.                                         |
| [Sensors](#sensors)                     | Send PC telemetry to HA.<br/>Example: cpu load, is your webcam active or is the current user active.                                 |
| [Quick Actions](#quick-actions)         | Trigger any HA entity.<br/>Example: turn on your lights or open the garage door.                                                     |
| [Notifications](#notifications)         | Receive a notification from HA, and show it as a Windows notification.<br/>Example: image of who's at the front door.                |
| [Media Player](#media-player)           | Control your PC from HA as if it were a mediaplayer.<br/>Example: see what Spotify song's playing, or send a text-to-speech message. |
| [WebView](#webview)                     | Show any webpage, without launching a browser.<br/>Example: show a HA dashboard when rightclicking HASS.Agent's tray icon.           |
| [Satellite Service](#satellite-service) | Process commands and sensors even when no user's logged in.<br/>Example: shutdown your PC at any time, locked or not.                |

Let's go over every function for a bit more in-depth.

---

## Commands

Commands have their own introduction page: [Command Basics](commands/command-basics.md).

If you want to go a bit more advanced, have a look at the actions page: [Actions Usage and Examples](commands/actions-usage-and-examples.md). Actions allow you to send variables alongside your command, so you can for example have you HA automation decide what URL you want to show.

---

## Sensors

Sensors allow you to send all sorts of telemetry from your PC to HA. A few common examples are _what's the current cpu load_, _are you using your webcam/mic_, _are you logged in_ or _is your session locked_ - but there are over 30 of them, so there's much more to explore.

When you create a new sensor, it shows up in HA as an entity:

![image](https://user-images.githubusercontent.com/81011038/170042142-705937df-f0ad-4808-aee4-7a1e87ec0aab.png)

To find the entities, go to your HA instance, and press `c`. This will show the search bar. Now type `devices` and press **enter**. In the `Search devices` bar that's shown on top, type the name of your HASS.Agent instance:

![image](https://user-images.githubusercontent.com/81011038/167813646-22cd747f-9094-42d4-b48b-2b17766d582f.png)

> Tip: you can always find (and change) the name of your HASS.Agent instance by clicking on the `configuration` button in the main window.

If your HASS.Agent is properly configured, your pc will now show as a result. You can easily verify it's a HASS.Agent instance by confirming it says `LAB02 Research` under the `Manufacturer` column.

Click on your pc to see what commands and sensors are currently configured.

### Multi-Value Sensors

Some sensors have multiple relevant data points. For instance, if you add a storage sensor, statistics for all your disks will get sent. You can easily see which sensors are multi-value through this column:

![image](https://user-images.githubusercontent.com/81011038/170042833-dcfe8f90-d972-4758-92bc-fdb6beaa8e47.png)

And here you can see the multiple sensors being added (they all start with the name you gave it):

![image](https://user-images.githubusercontent.com/81011038/170043145-d7b28d68-be3b-4009-8600-20956be7c62a.png)

---

## Quick Actions

One of the reasons for developing HASS.Agent was the ability to easily trigger HA entities. For instance, if I want to turn on a light, I don't want to open an app or browser and go to the right dashboard. Nor do I always want to say it out load to a Google Home-device of sorts. To make that possible, HASS.Agent has Quick Actions.

You configure them once by selected the desired entity and the desired state:

![New Quick Actions](https://raw.githubusercontent.com/LAB02-Research/HASS.Agent/main/images/hass_agent_new_quickaction.png)

And from that on you can either execute them by their individual hotkey, or pull up the list of quick actions by their global hotkey:

![Quick Actions](https://raw.githubusercontent.com/LAB02-Research/HASS.Agent/main/images/hass_agent_quickactions.png)

---

## Notifications

Another reason for HASS.Agent's creation was the ability to receive notifications from HA. For instance: someone presses the doorbell, and you get a notification with a picture of the guest on your PC. Because I'm usually listening to music with earpods in while working, this would be a good way to get my attention.

Use the [integration installation](https://hassagent.readthedocs.io/en/latest/integration/installation/) to help get you started, or the [notifications example page](https://hassagent.readthedocs.io/en/latest/notifications/notification-usage-and-examples/) for inspiration.

---

## Media Player

The mediaplayer allows you to use your HASS.Agent as a mediaplayer device: see and control what's playing (regardless of what application you're actually using to play media), and send text-to-speech notifications.

Use the [integration installation](https://hassagent.readthedocs.io/en/latest/integration/installation/) to help get you started or the [mediaplayer example page](https://hassagent.readthedocs.io/en/latest/mediaplayer/mediaplayer-usage-and-examples/) for inspiration.

---

## WebView

The webview capability is not something you can see directly like commands and sensors, but more of an underlying technique. It's basically a way to show a website, without having to launch a browser.

There are currently two implementations for the webview component.

### WebView Command

This command allows you to open any webpage with some extra configuration, like where on your monitor, and what size. You can use this to launch a predefined URL (like a HA dashboard) or even dynamically when using an Action.

Example configuration:

![image](https://user-images.githubusercontent.com/81011038/170069096-3be32f83-1d4b-44e1-9242-91f780673e7f.png)

### Tray Icon

By default, when you right-click the HASS.Agent tray icon (near your clock on the taskbar) you'll get a simple menu. However, you can also configure (through `Configuration` -> `Tray Icon`) to show a webview. This is really neat if you want to quickly show a dashboard with a bit more options than the quick actions:

![image](https://user-images.githubusercontent.com/81011038/170071165-b2f0fc28-9112-4186-963d-7df213008035.png)

---

## Satellite Service

HASS.Agent is a very easy (at least I think so) tool to configure your sensors and commands. There is however a downside: if you're not logged into Windows, it won't load, so your sensors and commands won't run. Another issue is security-wise: HASS.Agent runs with the least possible privileges, but that means you can't perform commands that would require elevation.

To allow for all that, the satellite service was added. This is a Windows service which runs in the background, and allows you to run sensors and commands without having to be logged in - and with elevated privileges (be careful though when running potential hazardous commands).

You can start tinkering by clicking the `satellite service` button in the main window:

![image](https://user-images.githubusercontent.com/81011038/201064924-9de5f2c0-922b-4a0a-b9fc-a6ce3d6eeae9.png)

The satellite service copies HASS.Agent's MQTT settings, except the `client id` (which is required to be unique). If you want to set another user, you can do so on the `MQTT` tab. Otherwise, jump straight into adding commands and sensors! HASS.Agent will warn you when a certain command or sensor can't be run via the satellite service.

**Remember to click the `send and activate` button after adding or modifying your entities!**

> Tip: if the MQTT status remains `disconnected`, restart the service (go to `Configuration` in the main window, then tab `Satellite Service` and click `stop service` and `start service` respectively) and check again.

> Note: you can't do anything that would require an UI in the satellite service - for instance, you can't open a browser. It wouldn't show.

---

If you need more info or want to talk, please feel free to reach out:

- [Github Tickets](https://github.com/LAB02-Research/HASS.Agent): Report bugs, feature requests, ideas, tips, ..

- [Discord](https://discord.gg/nMvqzwrVBU): Get help with setting up and using HASS.Agent, report bugs or just talk about whatever.

- [Home Assistant forum](https://community.home-assistant.io/t/hass-agent-a-new-windows-based-client-to-receive-notifications-perform-quick-actions-and-much-more/369094): Bit of everything, with the addition that other HA users can help as well.
