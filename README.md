## cloudcli

![](https://github.com/kodelint/cloudcli/actions/workflows/dockerfile-lint.yml/badge.svg)
![](https://github.com/kodelint/cloudcli/actions/workflows/build-and-push.yml/badge.svg)

`cloudcli` docker image with base `python:3.7.13-slim`. Comes with following pre-installed

- `git=1:2.30.2-1`
- `make=4.3-4.1`
- `vim-tiny=2:8.2.2434-3+deb11u1`
- `curl=7.74.0-1.3+deb11u2`
- `gcc=4:10.2.1-1`
- `sudo=1.9.5p2-3`
- `bash=5.1-2+deb11u1`

| **Component** | **Version** |
| --- | --- |
| `awscli` | `1.25.59`|
| `azure-cli` | `2.39.0`|
| `kubectl` | `1.24.4`|
| `python` | `3.7`|

This repo usage [hadolint](https://github.com/hadolint/hadolint) for `Dockefile` linting process. Any push the `main` branch will trigger [dockerfile-lint](https://github.com/kodelint/cloudcli/blob/main/.github/workflows/dockerfile-lint.yml). For ignore certain warning please use [.hodolint.yaml](https://github.com/kodelint/cloudcli/blob/main/.hadolint.yaml)

**GITHUB Repo:** [cloudcli](https://github.com/kodelint/cloudcli)