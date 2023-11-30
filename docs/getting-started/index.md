# Getting Started

## Introduction

This page explains the basics behind HASS.Agent: What it is and what it can do. We'll be using the abbreviation **HA** for Home Assistant, so when HA is mentioned, it refers to your Home Assistant instance.

???+ tip "Home Assistant Glossary"

    You can use Home Assistant's [glossary](https://www.home-assistant.io/docs/glossary/){: target="\_blank"} to look up words you don't know yet.

???+ tip "Getting started Video"

    EverythingSmartHome's youtube video is a great guide to get you started: [Control Your Windows PC With Home Assistant!](https://www.youtube.com/watch?v=B4SnJPVbSXc){: target="\_blank"}. Note that it is based on an older version(v1), so for instance the mentioned missing 'actionable notifications' are already implemented.

## Overview

In general, HASS.Agent is a client (_companion_) application for Home Assistant. It's being developed for Windows, with Windows 10 and 11 (fully up-to-date) in mind - previous versions or unpatched systems _may_ work.

The communication goes both ways: HASS.Agent can send data to HA, and HA can send data to HASS.Agent. In other words: you can use HASS.Agent to control and inform HA, and you can use HA to control HASS.Agent.

## Main Functionalities

| Function          | Description                                                                    | Usage Examples                                                     |
| ----------------- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------ |
| Commands          | Control your PC from HA.                                                       | Lock your session, open notepad, or emulate a keypress.            |
| Sensors           | Send PC telemetry data to HA.                                                  | CPU load, webcam status, or user activity.                         |
| Quick Actions     | Control and view any HA entity from your taskbar or a hotkey.                  | Turn on lights or open the garage door.                            |
| Notifications     | Send notifications from HA to Windows, includes actionable buttons and images. | Display an image of who's at the front door.                       |
| Media Player      | Control your PC from HA as if it were a media player.                          | See what Spotify song's playing, or send a text-to-speech message. |
| WebView           | Show any webpage or URL, without launching a browser.                          | Show a doorbell camera stream when the doorbell is pressed.        |
| Satellite Service | Process commands and sensors even when no user is logged in.                   | Shutdown your PC at any time, locked or not.                       |

We'll go into each function in depth a bit later on. For now lets get HASS.Agent [installed](./installation.md) and connected.
