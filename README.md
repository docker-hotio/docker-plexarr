[![GitHub Source](https://img.shields.io/badge/github-source-ffb64c?style=flat-square&logo=github&logoColor=white&labelColor=757575)](https://github.com/hotio/plexarr)
[![GitHub Registry](https://img.shields.io/badge/github-registry-ffb64c?style=flat-square&logo=github&logoColor=white&labelColor=757575)](https://github.com/orgs/hotio/packages/container/package/plexarr)
[![Docker Pulls](https://img.shields.io/docker/pulls/hotio/plexarr?color=ffb64c&style=flat-square&label=pulls&logo=docker&logoColor=white&labelColor=757575)](https://hub.docker.com/r/hotio/plexarr)
[![Discord](https://img.shields.io/discord/610068305893523457?style=flat-square&color=ffb64c&label=discord&logo=discord&logoColor=white&labelColor=757575)](https://hotio.dev/discord)
[![Upstream](https://img.shields.io/badge/upstream-project-ffb64c?style=flat-square&labelColor=757575)](https://github.com/l3uddz/plexarr)
[![Website](https://img.shields.io/badge/website-hotio.dev-ffb64c?style=flat-square&labelColor=757575)](https://hotio.dev/containers/plexarr)

## Starting the container

CLI:

```shell
docker run --rm hotio/plexarr ...
```

The default `ENTRYPOINT` is `plexarr`.

## Tags

Go [here](https://hotio.dev/containers-overview/#hotioplexarr) to see all available tags.

## Getting a Plex token for use in your configuration

Run the following command, but replace `<plex_username>` and `<plex_password>` with your actual username and password.

```shell
docker run --rm --entrypoint get-token hotio/plexarr <plex_username> <plex_password>
```

You should see something like this, if all went well:

```shell
Trying to get a Plex token...
Your Plex token is: xxxxxxxxxxxxxxxxxxxx
```
