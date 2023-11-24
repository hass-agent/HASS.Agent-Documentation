# Adding new pages

You can add new pages anywhere in the documentation if you feel the need to. However we do recommend checking in with the other docs developers before adding a new page, to make sure it is needed.

## Creating the page

You start by creating a new .md with an all lowercase name, you can use `-` dashes in place of spaces. For example this file is called `adding-pages.md` This file should be located in the section you want it, for example; if you want a new page in this documentation contributing section you will create the page in the `docs/contributing/hass-agent-documentation/`.

Now you can use a heading 1 to indicate the name of this page. Example: `# Adding new pages`

## Adding it to the navtree

You now need to open the `mkdocs.yml` file in the root of the documentation. At the very bottom you will see:

```yaml
nav:
  - Home: index.md
```

To add your page you need to find the section you have placed your file in, for example a file placed in the `docs/contributing/hass-agent-documentation` should be added under the:

```yaml
nav:
  - Helping Out:
      - Developing the Documentation:
```

You create a new entry by indenting and adding a `- ` and then writing the name of your page that you want in the sidebar navigation, so keep it short. Then you add a `:` and follow it by the directory of the file.
???+ note

    This directory starts in the docs folder so you will just write `contributing/hass-agent-documentation`, not `docs/contributing/hass-agent-documentation`.

## Editing and Testing the page

You can now edit the page and fill it with content, all of the changes should show in your browser and the page should be visible in the left navigation sidebar.
