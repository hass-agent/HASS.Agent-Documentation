# HASS.Agent Documentation

Keep changes production-ready.

- Do not add author notes, temporary explanations, scaffolding notes, or placeholder text unless the user explicitly asks for placeholders.
- Follow the local documentation rules in `docs/en/contributing/docs/`, especially `editing-files.md` and `index.md`, when working on docs structure, markdown, or links.
- English source content lives in `docs/en/`. Localized content should mirror that structure under its locale folder, for example `docs/de/`.
- Internal documentation links should be relative, using `./` and `../` as described in `docs/en/contributing/docs/editing-files.md`.
- Do not add explicit heading anchors unless the anchor slug must differ from the heading text. MkDocs creates heading anchors automatically from the heading text.
- External links should open in a new tab using `{: target="\_blank"}`.
- Keep naming, navigation, and page structure consistent with the current MkDocs Material + `mike` + `mkdocs-static-i18n` setup in this repo.
