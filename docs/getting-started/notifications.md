# Sending your first Notification

It is easy to send notifications to your windows pc, either from home assistant automations or node-red automations. We will cover both exampes to help you get started.

## General services

To send a notification you will be using the `notify.YOUR-PC` service, with `YOUR-PC` being the name of your pc.

## Simple script to send a notification

To start off with we will create a simple script that will send a test notification with a name and message.

### UI editor

Create a new script and select the first 4 properties however you want for this script. Next add a call service action and type in `notify.YOUR-PC` with `YOUR-PC` being the name of your pc, it should be autocompleted. Next you can fill in the message and title properties with whatever you want, in this case I used:

- **message:** This is a simple test notification with a message and a title
- **title:** Hello from HA!

### YAML

This is a very basic yaml script that send this notification

```yaml
service: notify.YOUR-PC
data:
  message: This is a simple test notification with a message and a title
  title: Hello from HA!
```

## Add a URL link to a message

### Create a new script/automation

Add a new call service action with the service `notify.YOUR-PC`, next fill in these properties:

- **message:** This is a simple test notification with a link
- **title:** Hello, with link!

#### Add link button

Fill in the data field with these lines:

```yaml
actions:
  - action: "openuri"
    title: "Open Link"
    uri: https://hass-agent.io
```

### YAML

```yaml
alias: New Script
sequence:
  - service: notify.YOUR-PC
    data:
      message: This is a simple test notification with a message and a title
      title: Hello from HA!
      data:
        actions:
          - action: openuri
            title: Open Link
            uri: https://hass-agent.io
```

## Automation to send an actionable notification

This notification will warn the user about their vaccuum being full and will include two buttons that ask the user for input on whether to pause or go home.

Because these are a lot more complicated, this guide will not explain anything that we are configuring. If you need info on that checkout the [setup](../setup/notifications.md) page.

### UI editor

#### Step 1: Send Notification

Create a new automation and create a trigger when your vacuum is full.

Next add an action that sends a notification like above, fill in the message properties the same. Mine looks like this:

**Call Service**

- **Service:** `notify.YOUR-PC`
- **message:** The vacuum is full and needs emptying, do you want to pause it or send it home?
- **title:** Vacuum Full!
- **data:** Here you need to fill in the following lines:

```yaml
actions:
  - action: "pause"
    title: "Pause"
  - action: "home"
    title: "Go Home"
```

#### Step 2: Do stuff when action buttons clicked

Create 2 new automations with the following properties:

##### 1st Action Button

###### Trigger

**Manual Event**

- **Event Type:** `hass_agent_notifications`
- **Event data:** `action: "pause"`

###### Action

Now put it an action to tell your vacuum to pause and your done with the first button in your notification.

##### 2nd Action Button

This one is almost the exact same as the previous one. Set the following properties as triggers and then add an action to tell your vacuum to dock/go home.

**Manual Event**

- **Event Type:** `hass_agent_notifications`
- **Event data:** `action: "home"`

### YAML

If you prefer to use YAML a much more in depth guide is available in the setup section. Here are the 3 example automations that manage the vacuum if you want to test it out.

#### Send Notification

```yaml linenums="1" hl_lines="6" title="automations.yaml"
description: ""
mode: single
trigger: []
condition: []
action:
  - service: notify.YOUR-PC
    data:
      message: >-
        The vacuum is full and needs emptying, do you want to pause it or send
        it home?
      title: Vacuum Full!
      data:
        actions:
          - action: pause
            title: Pause
          - action: home
            title: Go Home
```

You must switch the service in the highlighted line to `notify.` the name of your pc, you can find a selector on the left of the home assistant file editor.

#### 1st Action Button

```yaml linenums="1" title="automations.yaml"
description: ""
mode: single
trigger:
  - platform: event
    event_type: hass_agent_notifications
    event_data:
      action: pause
condition: []
action: []
```

#### 2nd Action Button

```yaml linenums="1" title="automations.yaml"
description: ""
mode: single
trigger:
  - platform: event
    event_type: hass_agent_notifications
    event_data:
      action: pause
condition: []
action: []
```

## Further Reading

<div class="grid cards" markdown>

- :material-remote-tv: **[Quick Actions]** – Interact with homeassistant entities and scripts from your taskbar or a hotkey!
- :material-radar: **[Sensors]** – Send data from your computer to homeassistant to create automations!
- :octicons-git-merge-24: **[Commands]** – Create commands homeassistant can run to do things on your computer!
- :material-cast: **[Media Player]** – Manage media on your computer and send text to speech!
- :material-file-cog: **[Other Features]** – For a guide on all the features and config options in HASS.Agent.

</div>

[Quick Actions]: ./quick-actions.md
[Sensors]: ./sensors.md
[Commands]: ./commands.md
[Media Player]: ./media-player.md
[Other Features]: ../setup/index.md
