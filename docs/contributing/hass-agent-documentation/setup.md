# Setting up a local environment to develop the documentation

!!! note

    You should understand the github structure before attempting this, more info can be found [here](./index.md/#github-structure).

## Forking the repo

To start off you will need to create your own fork of the documentation repo to track your changes. To do this go ahead and navigate to [this](https://github.com/hass-agent/hass-agent.github.io) repo. You will need to create a fork of this repo, a tutorial for this can be found [here](https://docs.github.com/en/get-started/quickstart/fork-a-repo).

### Forking all branches

!!! warning

    Make sure you do this step correctly or you will have problems later on.

After clicking fork you will be presented with this screen. You can customise the repo name and description however you **must** make sure to **de-select** "Copy the `main` branch only". You need both the `main` and `beta` branches to contribute.

![Screenshot of creating a fork github page](../../assets/images/screenshots/create-docs-fork.png)

### Disabling github actions

You will want to disable github actions so that nothing goes wrong. You can do that in the settings menu like this:

Settings --> Actions / General --> Disable actions --> save

### Deleting `gh-pages` branch

You wil not need the `gh-pages` branch so you can delete it like this.

Select the current branch --> View all branches --> Select the delete icon next to the `gh-pages` branch

## Setting up the local branches

Now you will want to navigate to a directory on your pc for HASS.Agent, I will be using `HASS.Agent`

Now go ahead and create at least one new folder named `hass-agent-docs-beta`.

### Clone the branches to each folder

Open a command prompt in the `HASS.agent` directory and clone the `beta` branch of your forked repo into the `hass-agent-docs-beta` folder. You can use the `-b beta` flag for this.

## Setting up local environment

???+ warning "Docker Required"

    Docker is required to contribute to the documentation, you can get it [here](https://hub.docker.com). You will also need the docker engine to be running whenever you want to edit the documentation.

### Setup Docker

To setup the local docker environment all you need to do is run the following command:

```bash
docker-compose up
```

This will build and setup the local docker and activate the live reload editing page. You can view this page at [localhost:8000](http://localhost:8000).

As long as this page successfully shows the documentation you can continue on to the development lifecycle and editing pages.

???+ note "Hotfixes on the main branch"

    If you want to put hotfixes onto the main branch you can repeat the steps from [here](#setting-up-the-local-branches).
