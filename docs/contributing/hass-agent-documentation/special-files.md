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

The `home.html` file is in the `theme_override_home` folder and contains a few keywords to tell the docs to render the header tabs and footer. After that the whole file is just `<style>` blocks for css, and other html blocks.
