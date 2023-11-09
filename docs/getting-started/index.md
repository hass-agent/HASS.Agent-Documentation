# Getting Started

## Introduction

This page explains the basics behind HASS.Agent: What it is and what it can do. We'll be using the abbreviation **HA** for Home Assistant, so when HA is mentioned, it refers to your Home Assistant instance.

> Tip: you can use Home Assistant's [glossary](https://www.home-assistant.io/docs/glossary/) to look up words you don't know yet.

> Tip: EverythingSmartHome's youtube video is a great guide to get you started: [Control Your Windows PC With Home Assistant!](https://www.youtube.com/watch?v=B4SnJPVbSXc). Note that it is based on an older version, so for instance the mentioned missing 'actionable notifications' are already implemented.

## Overview

In general, HASS.Agent is a client (_companion_) application for Home Assistant. It's being developed for Windows, with Windows 10 and 11 (fully up-to-date) in mind - previous versions or unpatched systems _may_ work.

The communication goes both ways: HASS.Agent can send data to HA, and HA can send data to HASS.Agent. In other words: you can use HASS.Agent to control and inform HA, and you can use HA to control HASS.Agent.

Globally, these are the functionalities:

| Function          | Description                                                                                                                          |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Commands          | Control your PC from HA.<br/>Example: lock your session, open notepad or emulate a keypress.                                         |
| Sensors           | Send PC telemetry to HA.<br/>Example: cpu load, is your webcam active or is the current user active.                                 |
| Quick Actions     | Trigger any HA entity.<br/>Example: turn on your lights or open the garage door.                                                     |
| Notifications     | Receive a notification from HA, and show it as a Windows notification.<br/>Example: image of who's at the front door.                |
| Media Player      | Control your PC from HA as if it were a mediaplayer.<br/>Example: see what Spotify song's playing, or send a text-to-speech message. |
| WebView           | Show any webpage, without launching a browser.<br/>Example: show a HA dashboard when rightclicking HASS.Agent's tray icon.           |
| Satellite Service | Process commands and sensors even when no user's logged in.<br/>Example: shutdown your PC at any time, locked or not.                |

We'll go into each function in depth a bit later on. For now lets get HASS.Agent installed and connected.
