# Contributing to the HASS.Agent Documentation

!!! note "Easier Editor"

    If you do not understand the basics of git version control then take a look at [this](./easy-editing.md) page.

!!! warning

    **Make sure you understand the HASS.Agent client version system before continuing. You can find info on it [here](../resources/version-system.md).**

## Overview

The HASS.Agent docs are built on MKDocs, which is a python based tool that allows you to write documentation in simple markdown. Most of the docs is written in markdown and is therefore easily editable. However submitting these edits and testing them requires a basic understanding of git and github version control.

### The documentation versions

At the top of the documentation you will find a selector to the write of the title. This is a version selector that allows you to view different versions of the documentation. You will notice there are three special versions and the rest follow the format of `*.*`:

| Version   | Description                                                                                             |
| --------- | ------------------------------------------------------------------------------------------------------- |
| `nightly` | Any nightly build of the documentation, used for testing feature and sharing experimental builds.       |
| `beta`    | The current beta build of the documentation, used for writing docs for upcoming features of HASS.Agent. |
| `latest`  | The current latest release of HASS.Agent, this is also the default version.                             |
| `*.*`     | Older versions of the docs, these are not editable. These are known as `old-versions` Example: `1.5`    |

## Github Structure

The repo for the documentation is linked at the top right of the documentation at all times and is also available [here](https://github.com/hass-agent/hass-agent.github.io){: target="\_blank"}. Go ahead and open it in another tab to reference as you go through this section.

### Branches Overview

The repo contains two permanent branches:

| Branch     | Description                                                                                                                                                                                    |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `main`     | Contains the files used to maintain the `latest`[^1] version of the documentation.                                                                                                             |
| `gh-pages` | Contains the built files of the documentation, this repo is not to be touched, everything is written in HTML, CSS and JS. All the files are auto-generated during builds of the documentation. |

#### Release Branches

Each upcoming feature release will get its own branch: `release-x.x`, that is tracked by the `beta`[^1] label.

### Deploying the documentation

After merges occur to either the `beta` or `main` branch specific github workflows will run that wil automatically build and deploy the correct version of the documentation. Therefore you **do not** need to ever do any sort of building or deploying.

#### Releasing the `beta` version

When it comes time to release the `beta`[^1] version of the documentation as the `latest`[^1] version, one of the admins of the github will manually trigger a workflow that will deploy and build the `release-x.x` branch as the `latest`[^1] version and also deploy a copy for the `beta`[^1] version. After the deployment a merge will be triggered to merge the `release-x.x` branch with the `main` branch.

## Further Reading

<div class="grid cards" markdown>

- **[Easy Editing]** – Simplest way to edit the documentation.
- **[Setup]** – Setup the local development environment.
- **[Development Lifecycle]** – Lifecycle of changes to the documentation.
- **[Editing Files]** – Overview of markdown features used for the docs, such as these cards.
- **[Adding Pages]** – Add new pages to the nav and sidebars.
- **[Special Files]** – For special pages and other files.

</div>

[Easy Editing]: ./easy-editing.md
[Setup]: ./setup.md
[Development Lifecycle]: ./development-lifecycle.md
[Editing Files]: ./editing-files.md
[Adding Pages]: ./adding-pages.md
[Special Files]: ./special-files.md

[^1]: This corresponds to the label in the documentation version selector.
