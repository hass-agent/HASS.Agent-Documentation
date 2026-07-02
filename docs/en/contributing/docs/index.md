# Contributing to the HASS.Agent Documentation

!!! note "Easier Editor"

    If you do not understand the basics of git version control then take a look at [this](./easy-editing.md) page.

!!! warning

    **Make sure you understand the HASS.Agent client version system before continuing. You can find info on it [here](../resources/version-system.md).**

## Overview

The HASS.Agent docs are built with MkDocs Material, versioned with `mike`, and served locally through Docker. The site content is mostly simple markdown, so editing pages is straightforward, but submitting changes and testing them locally still requires a basic understanding of git and GitHub.

### The documentation versions

At the top of the documentation you will find a version selector to the right of the title. This lets you view different published versions of the docs. You will notice there are three special versions and the rest follow the format of `*.*`:

| Version   | Description                                                                                             |
| --------- | ------------------------------------------------------------------------------------------------------- |
| `nightly` | Any nightly build of the documentation, used for testing feature and sharing experimental builds.       |
| `beta`    | The current beta build of the documentation, used for writing docs for upcoming features of HASS.Agent. |
| `latest`  | The current latest release of HASS.Agent, this is also the default version.                             |
| `*.*`     | Older versions of the docs, these are not editable. These are known as `old-versions` Example: `1.5`    |

## GitHub Structure

The documentation source lives in the [HASS.Agent-Documentation repo](https://github.com/hass-agent/HASS.Agent-Documentation){: target="\_blank"}. This is the repo you should fork and open PRs against when contributing to the docs.

### Branches Overview

The repo contains these long-lived branches:

| Branch     | Description                                                                                                                                                                                    |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `main`     | Contains the files used to maintain the `latest`[^1] version of the documentation.                                                                                                             |
| `gh-pages` | Contains the built files of the documentation, this repo is not to be touched, everything is written in HTML, CSS and JS. All the files are auto-generated during builds of the documentation. |

#### Release Branches

Each upcoming feature release gets its own branch: `release-x.x`. The `beta`[^1] docs version is deployed from that release branch while the upcoming version is still being written and reviewed.

#### Testing Branches

Temporary testing branches can also be used for previewing changes. The `nightly`[^1] docs version is intended for temporary testing branches, including user PR work when needed.

### Deploying the documentation

Updates to `main` automatically refresh the published `latest` alias. Release and testing versions are handled through GitHub workflows, so contributors do **not** need to build or deploy the site manually.

#### Releasing the `beta` version

When it is time to release the `beta`[^1] documentation as `latest`[^1], one of the project admins runs the release workflow from the current `release-x.x` branch. That workflow promotes the current beta docs to `latest`, keeps a copy of the release branch published as `beta`, and opens a PR to merge the release branch back into `main`.

## Languages and i18n

The documentation uses `mkdocs-static-i18n` with a folder-based structure. English source files live in `docs/en/`, and each additional language gets its own matching folder such as `docs/de/`.

If a translated page does not exist yet, the site falls back to the English page and shows a translation notice. For information on translating documentation pages, go to [Translating Documentation](../translating/documentation.md).

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
