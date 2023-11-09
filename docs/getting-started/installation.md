# Installation

Currently HASS.Agent is temporarily without access to the original REPO, however this is not permanent and will be resolved soon. For now though there are 2 main branches of HASS.Agent. There is the official one, which is older but more tested and stable. Then there is the beta version which is brand new with up-to-date features but less stable. We will go over installation instructions for both.

**Quick Install:** Click [here](https://github.com/LAB02-Research/HASS.Agent/releases/latest/download/HASS.Agent.Installer.exe) to download the official(old) build.

### Installation Methods

HASS.Agent consists of two main programs; The client and the service. The client is the interface that you will interact with to update settings and access quick actions. The Service(Satellite Service) is what allows HASS.Agent to run commands in the background. This means that the client must be installed for each user whereas the service is installed for the entire machine.

#### Installers

Installers are simple programs you download and run that will install all necessary files and take you through the full setup. Installers only work for one user. Click [here](#installer-recommended) for this method.

#### Manual .zip files

You can also manually download the .zip files for both parts of HASS.Agent; the service and the client. Click [here](#manualzip-files) for this method.

#### Special Case: Installing for multiple users

If you want to install HASS.Agent on multiple accounts on the same PC, first install using the installer, then use the corresponding .zip package for the remaining accounts.

> Note: you only have to install HASS.Agent on those accounts, the service is once-per-machine.

---

## Installer (recommended)

> Note: Requires elevated privileges(Administrator) to install

HASS.Agent can use an entry in your user account's registry to launch on login. It's disabled by default, but you'll be offered to enable this during onboarding, or you can always disable/enable using the Configuration window.

To use notifications and/or the mediaplayer functionality, you'll need to install the [HASS.Agent integration](https://github.com/LAB02-Research/HASS.Agent-Integration). Checkout [this]() guide for more info.

### Official Installer Release

Click [here](https://github.com/LAB02-Research/HASS.Agent/releases/latest/download/HASS.Agent.Installer.exe) to download the official installer.

### Beta Installer Release

The current dev team has no access to the original installer so betas are using a separate more bare-bones installer.

Click [here]() to download the beta installer.

---

## Manual(.zip files)

If you don't want to (or can't) use the installer, you can also install manually - it's not that hard.

Make sure you have dotnet 6 desktop runtime installed, you can [get that here](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.4-windows-x64-installer).

There are two zip files to download with every release; the client and the service. Get them just below.

HASS.Agent needs to be placed in a folder with write access. The default is `%appdata%\LAB02 Research\HASS.Agent`, but anywhere will do.

The Satellite Service's default folder is `C:\Program Files (x86)\LAB02 Research\HASS.Agent Satellite Service`. You can place it anywhere you want, however, if that's the case you need to manually start `HASS.Agent.Satellite.Service.exe`, wait for it to start, then close it again. This way, it'll have configured a local registry setting telling HASS.Agent where it's stored.

When both are done, you can start the configuration process by opening an **elevated** command prompt in HASS.Agent's directory. Then, execute the following command:

`HASS.Agent.exe update`

HASS.Agent will now launch, install and configure the service and firewall rules, then relaunch itself without elevation.

All done!

### Official .zip Release

Click [here](https://github.com/LAB02-Research/HASS.Agent/releases/latest/download/HASS.Agent.zip) to download the latest HASS.Agent package.

Click [here](https://github.com/LAB02-Research/HASS.Agent/releases/latest/download/HASS.Agent.Satellite.Service.zip) to download the latest Satellite Service package.

### Beta .zip Release

Click to download the latest HASS.Agent package.

Click to download the latest Satellite Service package.

---

## Build From Scratch (Official only)

If you want, you can also build everything yourself. You'll need to have Visual Studio 2022 installed. Also, make sure you have dotnet 6 desktop runtime installed, you can [get that here](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.4-windows-x64-installer).

There are two main projects:

[HASS.Agent](https://github.com/LAB02-Research/HASS.Agent/tree/main/src)

[HASS.Agent Satellite Service](https://github.com/LAB02-Research/HASS.Agent.Satellite.Service/tree/main/src)

Just get the source through git or GitHub's zip download, launch the solution files, make sure you set `x64` as its output type and build.

If you want to control the entire process: both projects use `HASS.Agent.Shared`, a library which contains models and code mainly for the commands and sensors. It's added as a [nuget](https://www.nuget.org/packages/HASS.Agent.Shared).

You can download its source here:

[HASS.Agent.Shared](https://github.com/LAB02-Research/HASS.Agent.Shared)

Just like before, make sure you set `x64` as its output type and build. Then, remove the nuget reference from both projects, add your own library and rebuild them.

When all this is done, you can follow step 2 'manual' on this page to resume installation.
