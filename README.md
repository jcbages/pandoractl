# pandoractl

[![License](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/RD17/ambar/blob/master/License.txt)

:battery: A CLI for performing admin operations. It's a wrapper around admin API endpoints for making it easier to interact with the Pandora system.

# Prerequisites

- Ruby (2.6.x or 2.7.x). You can use `rbenv` for this ([https://github.com/rbenv/rbenv](https://github.com/rbenv/rbenv)).

# Installation

Clone this repository into your machine:

```bash
$ git clone https://github.com/jcbages/pandoractl.git
```

Go into the `pandoractl` folder:

```bash
$ cd <path_to_pandoractl_folder>
```

Add execution permissions to the CLI binary:

```bash
$ [sudo] chmod +x ./bin/pandoractl
```

That's it! 🎉 Now you can run `pandoractl` like this (inside the `pandoractl` directory) and get a list of the possible commands:

```bash
$ ./bin/pandoractl
```

## Add binary to PATH

You can add `pandoractl` binary to you path by adding this to the end of your `.bash_profile` / `.bashrc` file:

```bash
export PATH=$PATH:<path_to_pandoractl_folder>/bin
```

Then you need to `source` the file you modified so that your changed are applied:

```bash
$ source ~/.bash_profile (or ~/.bashrc)
```

🎉Yay! Now you can run `pandoractl` from everywhere on your terminal.

# Usage

Note: If you didn't add `pandoractl` to your `PATH` then you need to run the CLI as shown on the last step of the installation section.

## Help

You can get a help about a specific command by running:

```bash
$ pandoractl help COMMAND
```

## Login

As this is an admin tool, you need to login first in order to run any operation. You can login by running:

```bash
$ pandoractl login USER PASSWORD
```

## Logout

`pandoractl` will store your access token so you can now run any admin operation. If you wish to remove this access token from your machine, you can logout by running:

```bash
$ pandoractl logout
```

## Get services

You can get a list of all your services by running:

```bash
$ pandoractl get_services
```

If you want information about only one service, you can pass its `id` like this:

```bash
$ pandoractl get_services --id=SERVICE_ID
```

## Create service

For creating a new service you must pass the name of the service which mush be unique among your already existing services:

```bash
$ pandoractl create_service NAME
```

## Delete service

You can only delete non-empty services. That is services with 0 entries. To erase an empty service you can run:

```bash
$ pandoractl delete_service SERVICE_ID
```

## Set a custom host

You can assign a custom host to an existing service. Just make sure the custom host is pointing to Pandora's IP at  `159.89.223.59`. You can do this by adding an `A Record` to the DNS configuration of your domain provider. An SSL certificate will be generated in the background after setting the custom host. To set a custom host you can run:

```bash
$ pandoractl set_custom_host SERVICE_ID CUSTOM_HOST
```

Note: The format of your custom host must not include any protocol (e.g. `http`) nor wildcard URL (`*`). Example of a valid custom host: `example.com`

## Delete a custom host

You can delete any custom host assigned to one of your services by running:

```bash
$ pandoractl delete_custom_host SERVICE_ID
```
