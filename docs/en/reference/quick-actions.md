# Quick Actions

## Overview

Quick Actions provide taskbar-accessible shortcuts and optional hotkeys for common Home Assistant entity actions or HASS.Agent command triggers.

## Quick Action Reference

| Item | Description |
| --- | --- |
| [Action Type](#action-type) | The source type for the Quick Action. |
| [Entity or Command](#entity-or-command) | The selected Home Assistant entity or HASS.Agent command target. |
| [Action](#action) | The action sent when the Quick Action is triggered. |
| [Description](#description) | Optional display text shown below the Quick Action. |
| [Per-Action Hotkey](#per-action-hotkey) | Optional hotkey for a specific Quick Action. |
| [Menu Hotkey](#menu-hotkey) | Global hotkey used to open the Quick Actions menu. |

## All Quick Action Items

#### Action Type

The Quick Action type decides what kind of target you are controlling. Most types correspond to Home Assistant entities, while one type targets HASS.Agent commands directly.

#### Entity or Command

This field selects the Home Assistant entity or HASS.Agent command that the Quick Action will trigger.

#### Action

The action field defines the command sent to the selected target, such as turning something on, toggling, or triggering playback controls.

#### Description

The optional description field controls the smaller text shown below the Quick Action entry.

#### Per-Action Hotkey

Each Quick Action can optionally define its own hotkey so it can be triggered without first opening the Quick Actions menu.

`Backspace` and `Escape` cannot be used as hotkey values because they clear the current selection.

#### Menu Hotkey

The Quick Actions menu itself also has a global hotkey configured separately under the main HASS.Agent hotkey settings.

## Related Guides

- [Getting Started with Quick Actions](../getting-started/quick-actions.md)
