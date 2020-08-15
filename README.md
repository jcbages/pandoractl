`pandoractl` is a CLI for performing admin operations. It's a wrapper around admin API endpoints for making it easier to interact with the Pandora system.

# Installation

Clone this repository into your machine:

```bash
$ git clone https://github.com/jcbages/pandoractl.git
```

Go into the `pandoractl` folder

```bash
$ mv <path_to_pandoractl_folder>
```

Add execution permissions to the CLI binary:

```bash
$ [sudo] chmod +x ./bin/pandoractl
```

That's it! 🎉 Now you can run `pandoractl` like this (inside the `pandoractl` directory) and get a list of the possible commands:

```bash
$ ./bin/pandoractl
```

# Usage

## Help

You can get a help about a specific command by running:

```bash
$ ./bin/pandoractl help COMMAND
```

## Login

As this is an admin tool, you need to login first in order to run any operation. You can login by running:

```bash
$ ./bin/pandoractl login USER PASSWORD
```

## Logout

`pandoractl` will store your access token so you can now run any admin operation. If you wish to remove this access token from your machine, you can logout by running:

```bash
$ ./bin/pandoractl logout
```

## Get services

You can get a list of all your services by running:

```bash
$ ./bin/pandoractl get_services
```

If you want information about only one service, you can pass its `id` like this:

```bash
$ ./bin/pandoractl get_services --id=SERVICE_ID
```

## Create service

For creating a new service you must pass the name of the service which mush be unique among your already existing services:

```bash
$ ./bin/pandoractl create_service NAME
```

## Delete service

You can only delete non-empty services. That is services with 0 entries. To erase an empty service you can run:

```bash
$ ./bin/pandoractl delete_service SERVICE_ID
```

## Set a custom host

You can assign a custom host to an existing service. Just make sure the custom host is pointing to Pandora's IP at  `159.89.223.59`. You can do this by adding an `A Record` to the DNS configuration of your domain provider. An SSL certificate will be generated in the background after setting the custom host. To set a custom host you can run:

```bash
$ ./bin/pandoractl set_custom_host SERVICE_ID CUSTOM_HOST
```

Note: The format of your custom host must not include any protocol (e.g. `http`) nor wildcard URL (`*`). Example of a valid custom host: `example.com`

## Delete a custom host

You can delete any custom host assigned to one of your services by running:

```bash
$ ./bin/pandoractl delete_custom_host SERVICE_ID
```
