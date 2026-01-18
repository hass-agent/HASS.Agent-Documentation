# Changelog

## HASS.Agent App

### 2.2.0 <small>- Jan 19, 2025</small> { id="2.2.0" }

??? danger "Breaking changes to GPU Temperature sensor"

    Due to security concerns, we were forced to remove Libre Hardware Monitor library that allowed HASS.Agent to access hardware information. The breaking change in this is that starting with this release, the GPU Temperature Sensor is non-functioning.
    **It has been left present for backward compatibility reasons, however it will always return 0.**

    Please see the awesome writeup by [@DarkAutumn](https://github.com/DarkAutumn){:target="_blank"} for more details [#43(comment)](https://github.com/hass-agent/HASS.Agent/issues/43#issuecomment-2349373416){:target="_blank"}.
    Please see [GPU Temperature](./setup/sensors/gpu-temperature.md) for how you can get GPU temperature information using standalone version of Libre Hardware Monitor.

- [#281](https://github.com/hass-agent/HASS.Agent/pull/281){:target="\_blank"}: Added support for "HumanPresence" internal device sensor.
- [#298](https://github.com/hass-agent/HASS.Agent/pull/298){:target="\_blank"}: Added new "NamedActiveWindow" binary sensor that can tell you if a window containing a specified name is currently active or not.
- [#299](https://github.com/hass-agent/HASS.Agent/pull/299){:target="\_blank"}: Added new "AccentColor" sensor that provides #RRGGBB values for Windows' accent colors.
- [#253](https://github.com/hass-agent/HASS.Agent/issues/253){:target="\_blank"}: Added WebSocket support for MQTT connections (experimental).
- [#322](https://github.com/hass-agent/HASS.Agent/pull/322){:target="\_blank"}: Added x86 (32bit) support to the project and the published artifacts.
- [#325](https://github.com/hass-agent/HASS.Agent/pull/325){:target="\_blank"}: Added ability to "hold" the KeyCommand for a longer time by making it a switch type.
- [#246](https://github.com/hass-agent/HASS.Agent/pull/246){:target="\_blank"}: Added support for selecting on which screen WebView will appear.
- [#199](https://github.com/hass-agent/HASS.Agent/pull/199){:target="\_blank"}: Added support for button helpers (input_button) for quick actions.
- [#369](https://github.com/hass-agent/HASS.Agent/pull/369){:target="\_blank"}: Added support for Fan domain for Quick Actions.
- [#377](https://github.com/hass-agent/HASS.Agent/pull/377){:target="\_blank"}: Added configuration backup that is done before migration from LAB02 version actually happens.
- [#378](https://github.com/hass-agent/HASS.Agent/pull/378){:target="\_blank"}: Added WinFormsSleep command (version of sleep command using specifically WinForms API).
- [#379](https://github.com/hass-agent/HASS.Agent/pull/379){:target="\_blank"}: Added ability to test MQTT connection during onboarding process.
- [#379](https://github.com/hass-agent/HASS.Agent/pull/379){:target="\_blank"}: Added missing "use WebSocket" option to MQTT onboarding step.
- [#380](https://github.com/hass-agent/HASS.Agent/pull/380){:target="\_blank"}: Added "MonitorSleepPowerPlan" command to turn off screen by temporarily modifying the power plan (should not cause the device to go to sleep).
- [#383](https://github.com/hass-agent/HASS.Agent/pull/383){:target="\_blank"}: Added permission checks for both client (issues with administrative permissions) and service (not running as system).
- [#247](https://github.com/hass-agent/HASS.Agent/pull/247){:target="\_blank"}: Fixed issue where the user would be presented with "You're running the newest version" even though the internet was unavailable.
- [#294](https://github.com/hass-agent/HASS.Agent/pull/294){:target="\_blank"}: Fixed relative URIs in the notifications not opening properly when clicked on.
- [#300](https://github.com/hass-agent/HASS.Agent/pull/300){:target="\_blank"}: Fixed typo in the onboarding screen.
- [#301](https://github.com/hass-agent/HASS.Agent/pull/301){:target="\_blank"}: Fixed quick actions window not scaling properly with the system scale.
- [#302](https://github.com/hass-agent/HASS.Agent/pull/302){:target="\_blank"}: Fixed repeating audio sensors error log when no default input or output is present because it was removed.
- [#303](https://github.com/hass-agent/HASS.Agent/pull/303){:target="\_blank"}: Fixed (once and for all?) issues with hotkey and German keyboard layouts by changing the default one to Shift+Control+Q.
- [#306](https://github.com/hass-agent/HASS.Agent/pull/306){:target="\_blank"}: Fixed issue where InnoSetup installer parameters would not be passed on to the Satellite Service installer.
- [#326](https://github.com/hass-agent/HASS.Agent/pull/326){:target="\_blank"}: Fixed satellite service missing AudioManager initialisation, causing AudioSensor not to work properly.
- [#333](https://github.com/hass-agent/HASS.Agent/pull/333){:target="\_blank"}: Fixed HASS.Agent refusing to start after a bluetooth dongle was removed with RadioCommand configured.
- [#156](https://github.com/hass-agent/HASS.Agent/pull/156){:target="\_blank"}: Fixed note regarding Home Assistant long-lived token generation and minor wording tweak.
- [#249](https://github.com/hass-agent/HASS.Agent/pull/249){:target="\_blank"}: Fixed the tray icon being blurry when using RDP extensively.
- [#318](https://github.com/hass-agent/HASS.Agent/pull/318){:target="\_blank"}: Fixed code typo in printer sensor's code.
- [#338](https://github.com/hass-agent/HASS.Agent/pull/338){:target="\_blank"}: Fixed issue where an error of one internal device sensor would cause issues with the configuration of others.
- [#239](https://github.com/hass-agent/HASS.Agent/pull/239){:target="\_blank"}: Fixed update notification being shown at startup even though general update notifications were disabled.
- [#346](https://github.com/hass-agent/HASS.Agent/pull/346){:target="\_blank"}: Fixed HASS.Agent crash when no WebView screen was explicitly configured.
- [#352](https://github.com/hass-agent/HASS.Agent/pull/352){:target="\_blank"}: Changed Satellite Service installation logic to limit the possibility of upgrades failing silently and/or leaving Libre Hardware Monitor files.
- [#358](https://github.com/hass-agent/HASS.Agent/pull/358){:target="\_blank"}: Fixed rare issue where LocalAPI would not work due to device configuration missing.
- [#372](https://github.com/hass-agent/HASS.Agent/pull/372){:target="\_blank"}: Fixed Home Assistant MQTT warning log regarding "object_id" deprecation.
- [#376](https://github.com/hass-agent/HASS.Agent/pull/376){:target="\_blank"}: Fixed device discovery messages not being properly removed when device name is changed.
- [#381](https://github.com/hass-agent/HASS.Agent/pull/381){:target="\_blank"}: Fixed order of sensors and commands so they are sorted alphabetically by the first letter.
- [#384](https://github.com/hass-agent/HASS.Agent/pull/384){:target="\_blank"}: Fixed onboarding donation message so it's clear all donations go towards the original creator of HASS.Agent - Sam.
- [#388](https://github.com/hass-agent/HASS.Agent/pull/388){:target="\_blank"}: Fixed MQTT entities changing ID after device rename.

### 2.1.1 <small>- Feb 06, 2025</small> { id="2.1.1" }

- [#230](https://github.com/hass-agent/Hass.Agent/pull/230){:target="\_blank"}: MQTT autodiscovery messages were not republished after connection was lost and recovered.
- [#229](https://github.com/hass-agent/Hass.Agent/pull/229){:target="\_blank"}: URI attached to a notification button wouldn't open properly.
- [#221](https://github.com/hass-agent/Hass.Agent/pull/221){:target="\_blank"}: Satellite Service exe path is now properly enclosed in double quotes according to good security practices.
- [#220](https://github.com/hass-agent/Hass.Agent/pull/220){:target="\_blank"}: Media playback via Music Assistant wasn't working correctly.
- [#204](https://github.com/hass-agent/Hass.Agent/pull/204){:target="\_blank"}: Fixed PowershellCommand argument handling where passing arguments containing spaces/quotes would cause the command to fail.
- [#205](https://github.com/hass-agent/Hass.Agent/pull/205){:target="\_blank"}: Fixed issue where restarting "Windows Management Instrumentation (WMI)" while HASS.Agent is running causes all WMI based sensors to stop functioning.
- [#185](https://github.com/hass-agent/Hass.Agent/pull/185){:target="\_blank"}: Media player now respects the user-provided value in mute service call.
- [#186](https://github.com/hass-agent/Hass.Agent/pull/186){:target="\_blank"}: Notification image not being shown when relative "/media/pics/image.png" was used instead of full URL.
- [#187](https://github.com/hass-agent/Hass.Agent/pull/187){:target="\_blank"}: UI not displaying properly on high-DPI devices with scaling other than 100%.
- [#159](https://github.com/hass-agent/Hass.Agent/pull/159){:target="\_blank"}: Fixed some documentation links pointing to non-existing pages.
- [#161](https://github.com/hass-agent/Hass.Agent/pull/161){:target="\_blank"}: Fixed issue where pressing ESC while having Alt+Tab pressed caused HASS.Agent windows to close.
- Fixed SetVolumeCommand ignoring provided value and not handling float values properly.
- Fixed internal AudioManager not properly clamping values if provided one was below 0 or above 100.

### 2.1.0 <small>- Sep 28, 2024</small> { id="2.1.0" }

- [#41](https://github.com/hass-agent/Hass.Agent/pull/41){:target="\_blank"}: Added "SetAudioInputCommand".
- [#42](https://github.com/hass-agent/Hass.Agent/pull/42){:target="\_blank"}: Added "ScreenshotSensor", functioning as camera entity.
- [#51](https://github.com/hass-agent/Hass.Agent/pull/51){:target="\_blank"}: Added option to ignore the MQTT/connection grace period when system wakes from hibernation.
- [#55](https://github.com/hass-agent/Hass.Agent/pull/55){:target="\_blank"}: Added option to use modern (white on transparent) icon for the HASS.Agent's trayicon.
- [#58](https://github.com/hass-agent/Hass.Agent/pull/58){:target="\_blank"}: Added note to "PowershellSensor" description as a reminder to Home Assistant's 255 character limit for the payload/state.
- [#69](https://github.com/hass-agent/Hass.Agent/pull/69){:target="\_blank"}: Added experimental functionality to scan Home Assistant NFC tags for devices equipped with a reader.
- [#74](https://github.com/hass-agent/Hass.Agent/pull/74){:target="\_blank"}: Added additional check for German keyboard layouts that might interfere with default HotKey.
- [#77](https://github.com/hass-agent/Hass.Agent/pull/77){:target="\_blank"}: Added "ProcessName" attribute to "ActiveWindowSensor".
- [#79](https://github.com/hass-agent/Hass.Agent/pull/79){:target="\_blank"}: Added "Advanced Settings" for all single value sensors that allow device_class, unit_of_measurement & state_class to be overriden.
- [#98](https://github.com/hass-agent/Hass.Agent/pull/98){:target="\_blank"}: Added action support for "MultipleKeys" command.
- Separated installer process into two - client and satellite, allowing for non-privileged user installation.
- [#56](https://github.com/hass-agent/Hass.Agent/pull/56){:target="\_blank"}: All dependencies have been bumped to the newest possible version.
- [#124](https://github.com/hass-agent/Hass.Agent/pull/124){:target="\_blank"}: Added new command to show/hide the built in webview.
- [#125](https://github.com/hass-agent/Hass.Agent/pull/125){:target="\_blank"}: Added "Trigger" option to the Quick Actions allowing for triggering the Home Assistant automation.
- [#126](https://github.com/hass-agent/Hass.Agent/pull/126){:target="\_blank"}: Added "Press" option to the Quick Actions allowing for Home Assistant button activation.
- [#140](https://github.com/hass-agent/Hass.Agent/pull/140){:target="\_blank"}: Added additional notification features to match the Android feature set (ability to set tags and clear notifications).
- [#39](https://github.com/hass-agent/Hass.Agent/pull/39){:target="\_blank"}: "SetAudioOutputCommand" and "SetApplicationVolume" commands are now properly configurable from the UI.
- [#40](https://github.com/hass-agent/Hass.Agent/pull/40){:target="\_blank"}: Updated VirtualDesktop management library to stop it crashing on some Windows 11 systems.
- [#45](https://github.com/hass-agent/Hass.Agent/pull/45){:target="\_blank"}: Fixed sensor state being evaluated constantly, ignoring the configured update interval.
- [#47](https://github.com/hass-agent/Hass.Agent/pull/47){:target="\_blank"}: Fixed issue where "PowershellCommand" arguments were not being bound/parsed properly when provided with payload/action.
- [#50](https://github.com/hass-agent/Hass.Agent/pull/50){:target="\_blank"}: Fixed "ActiveWindow" sensor not using proper encoding, resulting in some characters being replaced with "?".
- [#5](https://github.com/hass-agent/Hass.Agent/pull/5){:target="\_blank"}: Sensor/command discovery payload messages are now sent on HASS.Agent start and configuration change instead of constantly.
- [#57](https://github.com/hass-agent/Hass.Agent/pull/57){:target="\_blank"}: Changed "MicrophoneProcessSensor" description to more accurately describe its function.
- [#70](https://github.com/hass-agent/Hass.Agent/pull/70){:target="\_blank"}: Ensured all UI windows are closed when main one is.
- [#71](https://github.com/hass-agent/Hass.Agent/pull/71){:target="\_blank"}: MQTT Discovery message is properly cleared after device is renamed.
- [#76](https://github.com/hass-agent/Hass.Agent/pull/76){:target="\_blank"}: Microphone sensor now properly clears attributes with application names.
- [#92](https://github.com/hass-agent/Hass.Agent/pull/92){:target="\_blank"}: "ActiveWindowSensor" now properly reports attributes.
- [#78](https://github.com/hass-agent/Hass.Agent/pull/78){:target="\_blank"}: Fixed potential null reference for WMI sensors.
- [#82](https://github.com/hass-agent/Hass.Agent/pull/82){:target="\_blank"}: Corrected sensors' state and device classes so that they match the measurement.
- [#84](https://github.com/hass-agent/Hass.Agent/pull/84){:target="\_blank"}: Fixed screeenshot sensor not working correctly with systems using custom scaling.
- [#85](https://github.com/hass-agent/Hass.Agent/pull/85){:target="\_blank"}: Multiple fixes to audio sensors and management (including potential memory leak and crashes).
- [#101](https://github.com/hass-agent/Hass.Agent/pull/101){:target="\_blank"}: Additional fixes to audio sensors and management (related to memory leaks and crashes).
- [#102](https://github.com/hass-agent/Hass.Agent/pull/102){:target="\_blank"}: Media player not properly reporting mute status.
- [#88](https://github.com/hass-agent/Hass.Agent/pull/88){:target="\_blank"}: Fixed issue where command's friendly name was not being saved.
- [#90](https://github.com/hass-agent/Hass.Agent/pull/90){:target="\_blank"}: Fixed issue where Windows Update sensors did not have a unique ID.
- [#113](https://github.com/hass-agent/Hass.Agent/pull/113){:target="\_blank"}: Satellite service installer now respects user's choice of installation path.
- [#122](https://github.com/hass-agent/Hass.Agent/pull/122){:target="\_blank"}: Fixed issue where new audio management was not handling COM thread compartments correctly, causing sensors/commands to fail.
- [#123](https://github.com/hass-agent/Hass.Agent/pull/123){:target="\_blank"}: Satellite sensors now properly save "round", "ignore availability" and "advanced settings".
- [#133](https://github.com/hass-agent/Hass.Agent/pull/133){:target="\_blank"}: Fixed installer not having enough time to stop the satellite service.
- [#134](https://github.com/hass-agent/Hass.Agent/pull/134){:target="\_blank"}: Fixed internal devices sensors causing log spam if one of the configured ones are not able to provide measurement.
- [#141](https://github.com/hass-agent/Hass.Agent/pull/141){:target="\_blank"}: Webview now respects taskbars being located at top and sides of the screen.
- [#169](https://github.com/hass-agent/Hass.Agent/pull/169){:target="\_blank"}: Satellite sensors and commands now properly save friendly name.
