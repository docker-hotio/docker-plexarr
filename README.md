# plexarr

![Base](https://img.shields.io/badge/base-alpine-blue)
[![GitHub](https://img.shields.io/badge/source-github-lightgrey)](https://github.com/hotio/docker-plexarr)
[![Docker Pulls](https://img.shields.io/docker/pulls/hotio/plexarr)](https://hub.docker.com/r/hotio/plexarr)
[![GitHub Registry](https://img.shields.io/badge/registry-ghcr.io-blue)](https://github.com/users/hotio/packages/container/plexarr/versions)
[![Discord](https://img.shields.io/discord/610068305893523457?color=738ad6&label=discord&logo=discord&logoColor=white)](https://discord.gg/3SnkuKp)
[![Upstream](https://img.shields.io/badge/upstream-project-yellow)](https://github.com/l3uddz/plexarr)

## Starting the container

Just the basics to get the container running:

```shell
docker run --rm hotio/plexarr ...
```

The default `ENTRYPOINT` is `plexarr`.

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

## Tags

| Tag              | Upstream                      |
| -----------------|-------------------------------|
| release (latest) | GitHub releases               |
| nightly          | Every commit to master branch |

You can also find tags that reference a commit or version number.
