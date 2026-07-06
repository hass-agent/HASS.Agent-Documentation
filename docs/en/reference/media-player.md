# Media Player

## Overview

The HASS.Agent media player exposes your Windows machine as a media player entity in Home Assistant. It can surface playback information and can also be used with text-to-speech services.

## Media Player Reference

| Item | Description |
| --- | --- |
| [Entity](#entity) | The Home Assistant media player entity created for the device. |
| [Playback Info](#playback-info) | Information about current playback state and media details. |
| [Text-to-Speech](#text-to-speech) | Using Home Assistant TTS services with the device. |
| [Service Usage](#service-usage) | Typical Home Assistant usage pattern for media player calls. |

## Configuration Notes

### Text-to-Speech Call

The getting started flow uses a normal Home Assistant TTS service call with:

- a TTS service such as `tts.speak`,
- the HASS.Agent media player entity,
- the message you want spoken.

## All Media Player Items

#### Entity

HASS.Agent creates a Home Assistant media player entity for the configured device.

#### Playback Info

The media player can reflect currently playing media and other standard media player state exposed by Home Assistant.

#### Text-to-Speech

You can target the device with a Home Assistant text-to-speech service to play spoken messages through the Windows machine.

#### Service Usage

Most interactions happen through standard Home Assistant media player services and TTS services, so the device fits naturally into existing dashboards and automations.

## Related Guides

- [Setting up the Media Player](../getting-started/media-player.md)
