# Q-SYS Community Website

## Development

Run npm and Vue CLI commands within the development container.

### Run the development container

1. [Install Docker](https://docs.docker.com/install/)
1. Open a terminal with this as the working directory.
1. Run `dev-container/run.sh`
1. You should now be able to enter npm and Vue CLI commands to run within the container.
1. Press Ctrl+C to exit foreground processes running in the container.
1. Press Ctrl+D to exit the container.

### npm commands

Run these within the development container.

#### Project setup

`npm ci`

#### Compile and hot-reload for development

`npm run serve`

#### Lint and fix files

`npm run lint`

#### Compile and minify for production

`npm run build`

## Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).
