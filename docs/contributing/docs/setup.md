# Setting up a local environment to develop the documentation

!!! note

    You should understand the github structure before attempting this, more info can be found [here](./index.md/#github-structure).

## Forking the repo

To start off you will need to create your own fork of the documentation repo to track your changes. To do this go ahead and navigate to [this](https://github.com/hass-agent/hass-agent.github.io){: target="\_blank"} repo. You will need to create a fork of this repo, a tutorial for this can be found [here](https://docs.github.com/en/get-started/quickstart/fork-a-repo){: target="\_blank"}.

### Disabling github actions

You will want to disable github actions so that nothing goes wrong. You can do that in the settings menu like this:

Settings --> Actions / General --> Disable actions --> save

## Setting up the local branches

Now you will want to navigate to a directory on your pc for HASS.Agent, I will be using `hass-agent`

### Clone the branches to each folder

Open a terminal in the `hass-agent` directory and clone your forked repo for the docs.

## Setting up local environment

???+ warning "Docker Required"

    Docker is required to contribute to the documentation, you can get it [here](https://hub.docker.com){: target="\_blank"}. You will also need the docker engine to be running whenever you want to edit the documentation.

### Setup Docker

To setup the local docker environment all you need to do is run the following command:

```bash
docker-compose up
```

This will build and setup the local docker environment and serve the docs with live reload. You can view this page at [localhost:8000](http://localhost:8000){: target="\_blank"}, any edits to files will cause it to rebuild automatically.

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
