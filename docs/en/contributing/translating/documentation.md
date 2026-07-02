# Translating the Documentation

This page explains how to translate the HASS.Agent documentation itself. If you need help with markdown, navigation, assets, or local previewing, also read the documentation contribution guides [here](../docs/index.md).

## Overview

The documentation uses `mkdocs-static-i18n` with a folder-based layout. English is the source language and lives in `docs/en/`. Each translated language uses the same file and folder structure in its own locale directory.

For example:

```text
docs/
├── en/
│   └── contributing/
│       └── index.md
└── de/
    └── contributing/
        └── index.md
```

If a translated page does not exist yet, the site automatically shows the English page instead and displays a notice that translation is still needed.

## What to translate

When translating documentation pages:

- Keep the same file names and folder structure as the English source.
- Translate page content, headings, link text, and visible labels inside the markdown file.
- Keep code blocks, file paths, URLs, and version numbers unchanged unless they are genuinely language-specific.
- Preserve front matter and template references exactly when they already exist.

## Creating a translated page

Start by locating the English source page under `docs/en/`. Then create the matching file under the target language folder.

Example:

- English source: `docs/en/getting-started/installation.md`
- German translation: `docs/de/getting-started/installation.md`

If the language folder does not exist yet, create it and mirror the English directory structure inside it.

## Navigation

The main navigation is still controlled centrally in `mkdocs.yml`. Because the site uses the same page structure across languages, translated pages should use the same relative paths as the English source.

Top-level navigation labels can be translated in the `i18n` plugin configuration through `nav_translations`. Those labels are separate from page content and should stay consistent with the actual translated section names.

## Local testing

Use the normal docs development environment to preview translations locally:

```bash
docker compose up
```

Then open [localhost:8000](http://localhost:8000){: target="\_blank"} and switch languages using the language selector in the site header.

## When to edit the English docs guide instead

The translation guide is only for translation-specific workflow. If you need to:

- learn the markdown features used in this site,
- add a new page to the nav,
- update images or assets,
- edit theme overrides or special files,

go back to the documentation contribution section [here](../docs/index.md).
