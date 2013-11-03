linode-cli-utils
================

Collection of linode related tasks (always a subset of the Linode API) that may or may not be useful to you

## Configuration

Needs to know the API Key, so a yaml file is needed (not passing API keys through the command line) that looks like:

    api:
        key: <INSERT YOUR OWN KEY HERE>

the global `--config-file` option is used to load this up


# Tasks

## box-ips-for-ssh-config

Dumps the available boxes in a format appropriate to your `~/.ssh/config` file to assist auto-completion
