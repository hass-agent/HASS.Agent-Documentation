<style>
  .logo {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
  .title {
    padding-top: 10px;
    font-size: 36px;
    color: #41BDF5;
    text-align: center;
  }
  .subtitle {
    font-size: 20px;
    text-align: center;
  }
</style>

<a href="https://github.com/LAB02-Research/HASS.Agent">
  <img src="https://raw.githubusercontent.com/LAB02-Research/HASS.Agent/08310c474780107f63053cf02ce52f80e49408cb/images/logo_256.png"  alt="HASS.Agent" align="center" class="logo" />
</a>
<p class="title">
  <strong>
    HASS.Agent Documentation
  </strong>
</p>
<p class="subtitle">
  <strong>
    View the documentation 
    <a href="https://drr0x-glitch.github.io/hass.agent-docs/">here</a>
  </strong>
</p>
<br clear="left" />

## Overview

This repository contains all the files used to create [HASS.Agent's documentation](https://drr0x-glitch.github.io/hass.agent-docs/).

### Branches

- `main` --> contains the source code
- `gh-pages` --> deployable (builded) version

## Development / Contributing

If you would like to help out with development or translating of the HASS.Agent application check out our guide [here]().

### Contributing to the documentation

HASS.Agent's documentation is built with MKDocs which runs on python. You need to install the latest python(and pip) version and ensure venv works.

#### Setup a local environment

1. Clone the repo to a local folder
2. Open a command prompt in the folder and run `python -m venv venv` to create a new venv environment
3. Run `venv\scripts\activate` to activate this new environment
4. Run `python -m pip install mkdocs-material`
5. Open the project in your editor, for vs code run `code .` and then close the command prompt.

#### Editing the documentation

The basic idea of MKDocs is that all the files are in markdown and are simple to edit. All of the files can be found in the `docs` folder.
The project is build with a nav tree which consists of a folder for each section. For example the installation page is inside the getting started section so the file is located here `docs/getting-started/installation.md`

1. Run `mkdocs serve` to host the page at `http://localhost:8000/` Real-time updates will be shown as long as the terminal is active.
2. Make changes to any `*.md` files and check how they look in your browser.
3. Create a Pull Request to the `main` branch when done editing. No building or anything is required.
4. After a Pull Request is accepted it will be added to the `main` branch, built and then deployed at [https://drr0x-glitch.github.io/hass.agent-docs/](https://drr0x-glitch.github.io/hass.agent-docs/)

#### Adding local files(images)

You may notice that sometimes when you add local images into the docs folder and reference them in a markdown file they don't show in your browser. If this happens you can try the following steps:

1. Stop `mkdocs serve` (use `ctrl+c`)
2. Run `mkdocs build` to rebuild the project including the images
3. Run `mkdocs serve`

If this doesn't work check the directories and filenames are correct and you can look for help in our [discord server](https://discord.gg/nMvqzwrVBU) or DM [drr0x](https://discord.com/users/638245963240046592)

## TODO

- Finish copying over old documentation
- Update info to match current official release
- Create second version of the docs for the latest beta release
- Update info in the beta docs to match current beta release
