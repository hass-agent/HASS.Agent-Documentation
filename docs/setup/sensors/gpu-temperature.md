# GPU Temperature

To monitor GPU temperature with **HASS.Agent**, you can use a **WMI Query Sensor** with [LibreHardwareMonitor](https://github.com/LibreHardwareMonitor/LibreHardwareMonitor) running in the background.

!!! note
    To continue you **must** install [LibreHardwareMonitor](https://github.com/LibreHardwareMonitor/LibreHardwareMonitor/releases){:target="_blank"}.

## Configuration

```yaml
WMI Scope: \\.\ROOT\LibreHardwareMonitor

WMI Query: SELECT value FROM Sensor WHERE Name LIKE "%GPU Core%" AND SensorType = "Temperature"
```

???+ danger "Note"
    The built-in **GPU Temp** sensor in HASS.Agent is no longer functional. The underlying library was removed due to security concerns so it has been set to always return `0` for backwards compatibility. Use the WMI Query Sensor as shown above to restore this functionality.

    If you would like to know more about the issue checkout the awesome writeup by [@DarkAutumn](https://github.com/DarkAutumn){:target="_blank"}, available [here](https://github.com/hass-agent/HASS.Agent/issues/43#issuecomment-2349373416){:target="_blank"}.

## Example

![GPU Temperature via WMI Query](../../assets/images/screenshots/setup/sensors/gpu-lhm-wmi.png)