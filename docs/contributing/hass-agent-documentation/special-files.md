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

Feel free to edit the html if you know what you are doing, but note that homepage and all special file changes will be heavily scrutinised by the dev team to make sure there are no breaking changes, i.e it may take a long time for your changes to be approved.

**I don't know how to edit html/css but have found issues/modifications**

You can either submit a github issue or use discord. For more info on creating a [github issue](../reporting-issues.md) checkout [Reporting Issues](../reporting-issues.md) If you want to use discord you can either dm [@drr0x](https://discord.com/users/638245963240046592) the lead documentation dev or post a message in the dev channel on [this](https://discord.com/invite/nMvqzwrVBU) discord server.

## List of current overrides

- [Homepage](#homepage)
- Top notification bar
- Outdated version alert bar
- 404 Page
