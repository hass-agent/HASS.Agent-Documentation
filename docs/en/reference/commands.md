# Commands

## Overview

Commands let Home Assistant trigger actions on your Windows machine through HASS.Agent entities. Most command types are best exposed as button entities, but some can also return or reflect state depending on the command behavior.

## List of Commands

| Name | Description |
| --- | --- |
| [Custom](#custom) | Run a custom command. |
| [Custom Executor](#custom-executor) | Run a command through the configured custom executor. |
| [Hibernate](#hibernate) | Put the machine into hibernation. |
| [Key](#key) | Simulate a single key press. |
| [Launch URL](#launch-url) | Open a URL in the browser or configured tool. |
| [Lock](#lock) | Lock the current session. |
| [Log Off](#log-off) | Log off the current session. |
| [Media Mute](#media-mute) | Simulate the mute media key. |
| [Media Next](#media-next) | Simulate the next-track media key. |
| [Media Play/Pause](#media-play-pause) | Simulate the play/pause media key. |
| [Media Previous](#media-previous) | Simulate the previous-track media key. |
| [Media Volume Down](#media-volume-down) | Simulate the volume down media key. |
| [Media Volume Up](#media-volume-up) | Simulate the volume up media key. |
| [Monitor Sleep](#monitor-sleep) | Put monitors into low-power mode. |
| [Monitor Sleep Power Plan](#monitor-sleep-power-plan) | Sleep monitors using the power plan method. |
| [Monitor Wake](#monitor-wake) | Try to wake all monitors. |
| [Multiple Keys](#multiple-keys) | Simulate multiple key presses in sequence. |
| [PowerShell](#powershell) | Run a PowerShell command or script. |
| [Publish All Sensors](#publish-all-sensors) | Force all sensors to refresh and publish. |
| [Radio Command](#radio-command) | Toggle a supported radio device on or off. |
| [Restart](#restart) | Restart the machine after a delay. |
| [Send Window to Front](#send-window-to-front) | Bring an application's main window to the front. |
| [Switch Desktop](#switch-desktop) | Activate a specific virtual desktop. |
| [Set Volume](#set-volume) | Set the default audio device volume. |
| [Set Application Volume](#set-application-volume) | Set volume or mute for a specific app session. |
| [Set Audio Output](#set-audio-output) | Change the default audio output device. |
| [Set Audio Input](#set-audio-input) | Change the default audio input device. |
| [Shutdown](#shutdown) | Shut down the machine after a delay. |
| [Sleep](#sleep) | Put the machine to sleep. |
| [Tray WebView](#tray-webview) | Show or hide the tray icon WebView. |
| [WinForms Sleep](#winforms-sleep) | Put the machine to sleep using WinForms APIs. |
| [WebView](#webview) | Show a lightweight window with a URL. |

## Command Notes

#### Entity Type

You can choose different Home Assistant entity types for commands, but only some command types naturally expose useful state. For most commands, a `Button` entity is the most practical choice.

#### Naming

The `Name` field becomes the entity ID in Home Assistant, so it should avoid spaces and be stable enough for automations and dashboards.

#### Friendly Name

You can also set a friendly name for the Home Assistant UI. This does not change the entity ID.

#### Availability

The availability setting controls whether Home Assistant checks if the device is online before using the last known state.

## All Commands

#### Custom

Execute a custom command.

These commands run without special elevation. To run elevated, create a Scheduled Task and use `schtasks /Run /TN "TaskName"` as the command to execute your task.

Or enable `run as low integrity` for even stricter execution.

#### Custom Executor

Executes the command through the configured custom executor in `Configuration -> External Tools`.

Your command is provided as an argument as-is, so you need to supply your own quotes if necessary.

#### Hibernate

Sets the machine into hibernation.

#### Key

Simulates a single key press.

Making this command a switch type will keep the key pressed as long as the switch remains on.

Click the `keycode` textbox and press the key you want simulated. The corresponding keycode will be entered for you.

For the `TAB` key, use `LCTRL+TAB`.

If you need more keys or modifiers like `CTRL`, use the **Multiple Keys** command.

##### Holding a key

Holding a key can be done by toggling the key on and back off after a specified duration. Here's a script that makes it easier, credit [@f-hicks](https://github.com/f-hicks){: target="_blank"} on [GitHub](https://github.com/hass-agent/HASS.Agent/issues/323#issuecomment-3160851368){: target="_blank"}.

```yaml title="Script to hold a key, optionally specify a duration"
sequence:
  - action: switch.turn_on
    metadata: {}
    data: {}
    target:
      entity_id: "{{ target_switch }}"
  - delay:
      hours: 0
      minutes: 0
      seconds: "{{ duration }}"
      milliseconds: 0
  - action: switch.turn_off
    metadata: {}
    data: {}
    target:
      entity_id: "{{ target_switch }}"
fields:
  target_switch:
    description: The switch entity to hold
    example: switch.obs_spotify_scene
    selector:
      entity:
        domain: switch
    required: true
  duration:
    selector:
      number:
        min: 0
        max: 1
        step: 0.01
    name: duration
    description: How long the key is held for.
    default: 0.01
alias: hold hotkey
description: ""
```

#### Launch URL

Launches the provided URL, by default in your default browser.

To use incognito mode, provide a specific browser in `Configuration -> External Tools`.

If you only want a specific URL in its own window rather than a full browser, use a **WebView** command.

#### Lock

Locks the current session.

#### Log Off

Logs off the current session.

#### Media Mute

Simulates the mute media key.

#### Media Next

Simulates the next-track media key.

#### Media Play/Pause { #media-play-pause }

Simulates the play/pause media key.

#### Media Previous

Simulates the previous-track media key.

#### Media Volume Down

Simulates the volume down media key.

#### Media Volume Up

Simulates the volume up media key.

#### Monitor Sleep

Puts all monitors into sleep or low-power mode.

#### Monitor Sleep Power Plan

Puts all monitors into sleep or low-power mode using an alternative power plan modification approach.

This should provide a better experience on newer systems with modern `S0ix` sleep and avoid putting the whole system to sleep.

#### Monitor Wake

Tries to wake all monitors by simulating an `Arrow Up` key press.

#### Multiple Keys

Simulates pressing multiple keys.

You need to put `[ ]` around every key, otherwise HASS.Agent cannot tell them apart. For example, to press `X`, `TAB`, `Y`, and `SHIFT+Z`, use `[X] [{TAB}] [Y] [+Z]`.

There are a few tricks you can use:

- If you want a bracket pressed, escape it. So `[` is `[\[]` and `]` is `[\]]`.
- Special keys go between `{ }`, like `{TAB}` or `{UP}`.
- Put a `+` in front of a key to add `SHIFT`, `^` for `CTRL`, and `%` for `ALT`. For example, `+C` is `SHIFT+C`. `+(CD)` is `SHIFT+C` and `SHIFT+D`, while `+CD` is `SHIFT+C` and `D`.
- For multiple presses, use `{z 15}`, which means `Z` will be pressed 15 times.

More info: [System.Windows.Forms.SendKeys](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.sendkeys){: target="_blank"}

#### PowerShell

Execute a PowerShell command or script.

You can either provide the location of a script (`*.ps1`) or a single-line command.

This runs without special elevation.

#### Publish All Sensors

Resets all sensor checks, forcing all sensors to process and send their value.

This is useful if you want to force HASS.Agent to update all sensors after a Home Assistant reboot.

#### Radio Command

Switches the selected radio device on or off.

Availability of radio devices depends on the device HASS.Agent is installed on.

#### Restart

Restarts the machine after one minute.

Tip: accidentally triggered? Run `shutdown /a` to abort shutdown.

#### Send Window to Front

Looks for the specified process and tries to send its main window to the front.

If the application is minimized, it will be restored.

Example: if you want to bring VLC to the foreground, use `vlc`.

#### Switch Desktop

Activates the provided virtual desktop.

The desktop ID can be retrieved from the `Active Desktop` sensor.

#### Set Volume

Sets the volume of the current default audio device to the specified level.

#### Set Application Volume

Sets the volume and mute status of the provided application on the provided audio device.

The command payload must be in JSON format. Example:

```json
{
  "playbackDevice": "Speakers (THX Spatial Audio)",
  "applicationName": "Discord",
  "volume": 90,
  "mute": true
}
```

If no `playbackDevice` is provided, HASS.Agent uses the default one.

If no `volume` is provided, HASS.Agent only updates mute status.

If no `mute` is provided, HASS.Agent will unmute the provided application.

Advanced option: an additional `sessionId` can be provided to set volume only for a specific session of the application. The session ID can be obtained from the `Audio` sensor:

```json
{
  "playbackDevice": "Speakers (THX SpatialAudio)",
  "applicationName": "Discord",
  "volume": 50,
  "sessionId": "<LONG SESSION ID FROM SENSOR>"
}
```

#### Set Audio Output

Sets the default audio output for the system.

Requires the audio device name as payload.

#### Set Audio Input

Sets the default audio input for the system, including the default communication device.

Requires the audio device name as payload.

#### Shutdown

Shuts down the machine after one minute.

Tip: accidentally triggered? Run `shutdown /a` to abort shutdown.

#### Sleep

Puts the machine to sleep.

Due to a Windows limitation, this only works if hibernation is disabled. Otherwise it will hibernate instead.

You can use tools like [NirCmd](http://www.nirsoft.net/utils/nircmd.html){: target="_blank"} to work around this.

#### Tray WebView

Shows or hides the tray icon WebView.

This requires the tray WebView to be configured in `Configuration -> Tray Icon`.

#### WinForms Sleep

Puts the machine to sleep using WinForms APIs.

Because of Modern Sleep, sleep commands may behave differently depending on the device OEM and OS configuration.

#### WebView

Shows a window with the provided URL.

This differs from **Launch URL** in that it does not open a full browser, only the provided URL in its own window.

You can use this to quickly show something like a Home Assistant dashboard.

By default, it stores cookies indefinitely so you only have to log in once.

## Related Guides

- [Creating your first Command](../getting-started/commands.md)
