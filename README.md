# shellcheck-reviewdog

Shell lint with [Review Dog](https://github.com/reviewdog/reviewdog) inside

Based on [`koalaman/shellcheck-alpine`](https://github.com/koalaman/shellcheck) image.

### Versions
|||
|-|-|
| shellcheck | v0.7.1 |
| reviewdog | v0.9.17 |

To override these default versions:

`docker build -t linuxbandit/shellcheck-reviewdog --build-arg SHELLCHECK_VERSION=v9000 --build-arg REVIEWDOG_VERSION=v1000 .`
