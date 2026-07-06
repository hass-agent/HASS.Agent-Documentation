# Notifications

## Overview

Notifications let Home Assistant send native Windows notifications through HASS.Agent. These can be simple one-way alerts or richer actionable notifications that send events back into Home Assistant.

## List of Notification Topics

| Topic | Description |
| --- | --- |
| [Notify Service](#notify-service) | The Home Assistant service used to send notifications. |
| [Basic Payload](#basic-payload) | The minimum fields for a simple notification. |
| [Actions](#actions) | Buttons added to a notification payload. |
| [Open URI Action](#open-uri-action) | Action type for opening a URL directly. |
| [Actionable Notifications](#actionable-notifications) | Notifications that return user interaction back to Home Assistant. |
| [Notification Events](#notification-events) | The event used when actions are clicked. |
| [Automation Pattern](#automation-pattern) | Typical structure for actionable notification automations. |

## Configuration Notes

### Service Name

Notifications are sent through the `notify.YOUR-PC` service, where `YOUR-PC` matches the discovered device name in Home Assistant.

### Basic Fields

The basic notification payload uses:

- `title`
- `message`

These are enough for a simple native Windows notification.

## All Notification Topics

#### Notify Service

To send a notification from Home Assistant, call the `notify.YOUR-PC` service, replacing `YOUR-PC` with the discovered name of your device.

This is the same service used throughout the getting started examples.

#### Basic Payload

The simplest notification only needs a `title` and `message`.

Example:

```yaml
service: notify.YOUR-PC
data:
  message: This is a simple test notification with a message and a title
  title: Hello from HA!
```

#### Actions

Buttons are added through an `actions` list inside the notification `data` payload.

Each action usually includes:

- `action` for the returned action ID
- `title` for the visible button text

Example:

```yaml
data:
  actions:
    - action: pause
      title: Pause
    - action: home
      title: Go Home
```

#### Open URI Action

The `openuri` action opens a URL directly from a notification button.

This is useful for dashboards, camera links, or quick navigation flows.

Example:

```yaml
data:
  actions:
    - action: openuri
      title: Open Link
      uri: https://hass-agent.io
```

#### Actionable Notifications

Actionable notifications are regular notifications with one or more actions attached.

These are useful when you want the Windows user to choose what Home Assistant should do next.

#### Notification Events

When a notification action is pressed, HASS.Agent fires the `hass_agent_notifications` event back into Home Assistant.

The action identifier is included in the event data so automations can react to the selected button.

Example event trigger:

```yaml
trigger:
  - platform: event
    event_type: hass_agent_notifications
    event_data:
      action: pause
```

#### Automation Pattern

A typical actionable notification flow is:

1. Send a notification through `notify.YOUR-PC`.
2. Add one or more entries to `data.actions`.
3. Create automations that listen for `hass_agent_notifications`.
4. Match on the returned `action` value and run the corresponding Home Assistant action.

## Related Guides

- [Sending your first Notification](../getting-started/notifications.md)
