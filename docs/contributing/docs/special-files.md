# Special Files

## Theme Overrides

Theme overrides are files that override the theme and style of the documentation. The homepage is the biggest one.

### Homepage

You will notice the homepage is so different compared to the rest of the documentation, this is because it is a theme override that is overriding the markdown page.

#### The markdown file

The base index.md file that is the homepage just contains the following code:

```md
---
title: Home
template: home.html
---
```

This sets the title to be Home and tells the theme that I want to use the theme override `home.html` as the "template". This renders the file `home.html` as the homepage.

#### The `home.html` file

The `home.html` file is in the `overrides/` folder and contains a few keywords to tell the docs to render the header tabs and footer. After that the whole file is just `<style>` blocks for css, and other html blocks.

#### Editing the homepage

Feel free to edit the html if you know what you are doing, but note that homepage and all special file changes may take longer to be approved.

**I don't know how to edit html/css but have found issues/modifications**

You can either submit a github issue or use Discord. For more info on creating a [github issue](../reporting-issues.md) checkout [Reporting Issues](../reporting-issues.md). If you want to use Discord you can either dm [@drr0x](https://discord.com/users/638245963240046592){: target="\_blank"} the lead documentation dev, or post a message in the dev channel on our [Discord server](https://discord.gg/JfZj98xqJr){: target="\_blank"}.

## List of current overrides

- [Homepage](#homepage)
- Top notification bar
- Outdated version alert bar
- 404 Page

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
