# Integration Development Lifecycle

**Here is a good diagram showing the development lifecycle**

```mermaid
flowchart TD
  subgraph "Local Directory"
    repoLocal["Local Repo Folder"]
  end

  subgraph "HA Dev Container"
    haContainer["HA Dev Container"]
  end

  repoLocal -->|Copy files| haContainer

  editFiles(Edit files in HA container and test changes)
  copyBack(Copy files back to the local repo folder)
  commitPR(Commit changes and submit a PR to the upstream repo)

  haContainer -->|Begin| editFiles
  editFiles -->|Complete| copyBack
  copyBack -->|Submit| commitPR

```

## Events in order

#### Copy files

Make sure the local repo folder is in sync with upstream and then copy the `custom_components` folder from the local repo folder to the `.config` directory.

#### Begin

Start the dev container and start editing files.

#### Complete

Finish testing and editing, and then copy the `custom_components` files back to the local repo folder.

#### Submit

Upload/Commit changes and submit a PR to the github organization.
