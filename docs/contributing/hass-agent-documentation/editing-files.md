# Editing the documentation files

!!! note

    Before you read through here make sure you understand the [Development Lifecycle](./development-lifecycle.md) and have finished the [Setup Guide](./setup.md).

## Directory Structure

To start off with you will want to understand the directory structure of the documentation.

### Root directory

At the root of the project you will see a directory structure similar to this:

```bash
├───.github
│   ├───ISSUE_TEMPLATE
│   └───workflows
├───docs
├───overrides
│   ├───home.html
│   └───main.html
├───mkdocs.yaml
└───requirements.txt
```

#### Important files

- `mkdocs.yaml`: The top-level configuration of the documentation. Holds information such as the navtree and plugins used.
- `requirements.txt`: Used to hold all versions of dependencies required for the documentation. You will not need to edit this.

#### Important directories

- `.github`: This folder contains information for github such as the issue templates and the workflows.

- `docs`: This folder contains all of the files used to make the pages of the documentation. This is where you will find the markdown files.

- `overrides/`: This folder contains "Theme Overrides", which allow us to have very fine control over the documentation.

#### Other directories

There are some other files/folders you will find in your project directory such as `venv/`, `.gitignore` and `README.md`. These are all files that will not need to be edited so I don't explain them here.

!!! note "Special Files"

    Most of these files/folders are talked about in more detail on the [Special Files](./special-files.md) page.

### `docs/` Directory Structure

The `docs/` folder is where you will be spending the majority of the time. It contains all of the `*.md` files as well as the assets used in the documentation. The basic directory structure looks like this:

```bash
├───assets
│   └───images
│       ├───icons
│       ├───logo
│       └───screenshots
├───contributing
├───getting-started
├───layouts
├───stylesheets
└───index.md
```

#### Assets

This folder contains the assets used in the documentation. This folder mainly contains images at the moment. You will find it is organised into subfolders, in this case just `images/`. When you need to reference any image you will be navigating here.

#### Special Directories

- `layouts/`: Contains the images and layouts used across the documentation for specific usecases. Currently it just hold data for Jinja templates that make up the social cards.

- `stylesheets/`: Contains the extra `*.css` files used to overwrite documentation styling. Things such as the color scheme is found here.

#### Other Directories

The rest of the directories found here are sections of the documentation. Each one of these directories corresponds to a section. For example the `contributing/` directory corresponds to the "Helping Out" section you are in right now.

#### `index.md` - special file

`index.md` is a special file that you will find in every folder that holds `*.md` files. This file is the "Home" of every folder. So when it is in the root `docs/` folder it is the homepage for the entire site. Another example is the one in the `contributing/` folder that is the home of the "Helping Out" section, and so on and so forth.

!!! note "Special Case: Homepage"

    The `index.md` file in the root `docs/` directory doesn't contain any actual markdown. This is because it is a fully custom page that is written in html and css as a theme override, there is more information about it [here](./special-files.md/#homepage).

## Intro to Markdown

This section will serve as a very basic intro to markdown. As well as describe the extra features included with the documentation that are not in normal markdown.

To start off with, most of the stuff written will just be plain text, for example this section you are reading right now is just plain text.

### Simple Formatting Options

- Titles: `# Title` We use hashtags to indicate titles, you can go from heading 1 to 6, 1 being the largest heading and 6 being the smallest. This number corresponds to the number of hashtags. A heading 3 would look like this: `### Title`.
- Bold: `**Bold text**` We use Double Asterisks to indicate bold text.
- Code blocks: `` This is a `Code block`, specifically an inline one  `` Multiline ones are also available, checkout [this](#codeblocks) section for more
- Lists: `- List item` A dash indicates a bulleted list, like this one. And for numbered you just write `1. Numbered list item`

> Callouts like this one can be written using a `> ` at the start: `> Example callout`

You will notice all of these require a certain character followed by a space. If you do not include a space between the special character and the text it will not showup correctly.

### Hyperlinks

We use the standard markdown implementation for hyper links however some extra attributes can be added. Here is a standard link with the text home and the link to the homepage:

```md
[home](https://hass-agent.github.io/latest/)
```

#### Inside Links

Inside links point to pages or sections inside of this documentation, for example I want to navigate a user to the forking section of the setup for editing the documentation:

```md
[More info on forking the repo](./setup.md/#forking-the-repo)
```

[More info on forking the repo](./setup.md/#forking-the-repo)

This link points to a local file by using a `./` followed by the name of the file. If you want to go up a directory you use `../` These can be chained together to get anywhere in the documentation. E.g `../../getting-started/index.md`

The hashtag specifies which section of the page you want to link to, vscode should autocomplete this for you but if not you can click the P icon to the right of any heading in the docs and the url at the top will end with the correct hashtag link to use.

!!! example

    This section we are in right now can be linked to with `#inside-links`

#### External Links

You can add links that point to any address however most of the time they should be opened in a new tab. Unless the link is a direct file download link you need to add this attribute to tell the browser to open the link in a new tab: `{: target="\_blank"}`

```md title="Example link to open google in a new tab"
[google](https://google.com){: target="\_blank"}
```

[google](https://google.com){: target="\_blank"}

### Newlines and document structure

Every different "text-type" should have a newline separating it from the previous one. So there should be a new line between titles and paragraphs and also a new line between a title and a group of list items, etc.

### Separating paragraphs

You can separate paragraphs in two ways, here are the 2 options:  
Text starting on next line.

Gap before next text block.

> You can create a gap between each paragraph by just creating a newline in the file. To continue the text without a gap but on the next line you add 2 spaces to the end of the previous line.

## Codeblocks

Codeblocks are unsurprisingly used to indicate code, they have different styling and can be copied as well as highlighted depending on the syntax.

### Inline Codeblocks

These are the most simple. They are just a small section of a paragraph or line. These do not have options such as a copy button or annotations.

> Example: `Inline codeblock here` Normal text here

You can write these inline codeblocks by adding a backtick: `` ` ``, at the start and end of the codeblock.

### Multiline Codeblocks

These codeblocks are slightly more complex but include features such as a copy button and line highlighting.

#### Basic codeblock

A basic codeblock can be written using 3 backticks: ` ``` ` at the start and end.

````title="Example basic codeblock syntax"
```
def add1(num):
  return num += 1
```
````

**Looks like this:**

```
def add1(num):
  return num += 1
```

You will notice a copy button at the top right of each codeblock.

#### Syntax Highlighting

You can add syntax highlighting for almost every language. Here is the same python function with some highlighting:

```py
def add1(num):
  return num += 1
```

To do this you add a language shortcode right after the backtick(s). Like this:

````
```py
Highlighted as python
```
````

#### Line numbers, titles and highlighting lines

##### Line Numbers

You can add line numbers with `linenums="1"` this will make the first line 1. You can set the first line to any number;  
For example, to start at 54(1): use `linenums="54"`.
{.annotate}

1. This is just an example number, any number can be used.

##### Highlighting Lines

You can also highlight any of the lines using `hl_lines="2 3"`; this will highlight lines 2 and 3, if you want to use a range just add a dash: `hl_lines="3-5"`

##### Adding Titles

Titles can be added with `title="This is a title"`

```py linenums="1" hl_lines="2" title="With line numbers, a title and line 2 highlighted"
def add1(num):
  return num += 1
```

## Annotations, Footnotes and Admonitions

The documentation also has annotations and admonitions which are not a normal markdown feature.

### Annotations

#### Annotations Overview

Annotations are small plus buttons that can be placed almost anywhere in the documentation that when clicked show more information.(1)
{.annotate}

1. This is an example annotation

#### Syntax

You can add these anywhere with a number inside of 2 parentheses, example: `(1)`. And then at the end of that block you add `{.annotate}` followed by a numbered list corresponding to the annotation number. Here is an example with comments to help you understand:

```md hl_lines="4"
Example bit of text with annotation here: (1)

Another annotation here: (2)
{.annotate}

1. This is the first annotation - corresponds to `(1)`
2. Another annotation - corresponds to `(2)`
```

!!! note

    Note the `{.annotate} after the codeblock, it is required for the list item to not be rendered and instead link to the `(1)`.
    Also note the numbers used, they must matchup for the annotations to work correctly.

> More information can be found [here](https://squidfunk.github.io/mkdocs-material/reference/annotations/){: target="\_blank"}

### Footnotes

Footnotes can be added anywhere in a page. They work similarly to the annotations and look like this:

> There is a footnote at the end of this sentence.[^1]

#### Syntax

You indicate footnotes anywhere in a page with `[^1]` with the number working the same as the annotations. Just make sure the number corresponds between the location in the page and at the bottom.

At the very bottom of the page you write the same identifier, so in this case `[^1]` followed by a `:` like this:

```md hl_lines="3"
Text with footnote here: [^1]

[^1]: This is an example footnote text
```

> More information can be found [here](https://squidfunk.github.io/mkdocs-material/reference/footnotes/?h=footnote){: target="\_blank"}

### Admonitions

Admonitions are the "notes" or "warnings" you will have seen, they are in a colored box and stand out. Here is an example:

??? example "Example admonition"

    Admonition text

#### Syntax

They can be written like this:

```md
!!! note

    This is a note admonition
```

Titles can be included by adding text in `""` after the admonition type:

```
!!! note "Note admonition example title"
```

#### Collapsible admonitions

You can create either static admonitions or collapsible ones. Collapsible ones are indicated with a `???` instead of `!!!`, if you would like the collapsible one to be open by default then use `???+`.

> More informaition including the list of admonition types can be found [here](https://squidfunk.github.io/mkdocs-material/reference/admonitions/){: target="\_blank"}

## Diagrams

The documentation has multiple diagrams spread across the pages that can be edited from the markdown files. All of these are based on [mermaidjs](http://mermaid.js.org/syntax/flowchart.html){: target="\_blank"}.

The documentation basically exlusively uses flowcharts for better styling but all mermaid types are technically supported. You can find docs on the flowcharts [here](http://mermaid.js.org/syntax/flowchart.html){: target="\_blank"}, and more information about our implementation of mermaidjs [here](https://squidfunk.github.io/mkdocs-material/reference/diagrams/){: target="\_blank"}.

[^1]: The example footnote, you can use the enter button here to return to where you were:
