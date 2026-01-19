# Frequently Asked Questions

### Why didn’t all entity IDs and service names change after renaming my device?

In the ideal scenario, renaming a device would **not** automatically change MQTT entity IDs, media player entity IDs, or notification service names. The reasoning behind this design is to avoid breaking existing dashboards, automations, scripts, and integrations that rely on stable IDs.

Users who _do_ want updated IDs can explicitly use the **“Recreate entity IDs”** option.

However, there is a known inconsistency:

- MQTT entities and media player entities may retain their original IDs
- The notification service name _can_ change after renaming (for example: `notify.my_pc`)
- Once changed, the notification service name may remain in that state

This behavior is not ideal and is acknowledged as a limitation. A fix or improvement is planned, but there is no immediate solution available.

### I don’t care about preserving IDs, how can I get everything renamed cleanly?

If your priority is having **consistent and correctly named services and entities**, and you are fine with losing entity history and changing IDs, you can perform a clean start.

#### Device Renaming – Clean Start (Advanced)

This approach makes Home Assistant treat the device as completely new.

**Steps:**

1. Close **HASS.Agent**
2. Remove the device from **Home Assistant**
3. Clean the MQTT topic for that device
4. Restart **Home Assistant**
   - This clears the notification service, which may otherwise persist due to how Home Assistant handles discovered services
5. Change the `DeviceSerialNumber` registry value:
   - Path:  
     `Computer\HKEY_CURRENT_USER\SOFTWARE\HASSAgent\Client`
   - Set it to any new value so Home Assistant sees the device as new
6. Start **HASS.Agent**
7. Add the newly discovered device in **Home Assistant**

**Result:**

- Entity IDs and notification service names will be in sync
- The device will appear as a fresh installation

!!! warning

    Entity history will **not** be preserved, and any dashboards or automations referencing old IDs will need to be updated.
