# Press Key

## Holding a key

Holding a key can be done by toggling the key on and back off after a specified duration. Here's a script that makes it easier, credit [@f-hicks](https://github.com/f-hicks){: target="\_blank"} on [github](https://github.com/hass-agent/HASS.Agent/issues/323#issuecomment-3160851368){: target="\_blank"}.

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