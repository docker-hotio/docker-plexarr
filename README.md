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

## Tags

| Tag      | Description                    |
| ---------|--------------------------------|
| latest   | The same as `stable`           |
| stable   | Stable version                 |
| unstable | Every commit to master branch  |

You can also find tags that reference a commit or version number.
