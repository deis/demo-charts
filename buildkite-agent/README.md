# Buildkite Agent

This Chart provides a [Buildkite Agent](https://buildkite.com/docs/agent) for running build automation tasks on public git repositories (where you don't need a private SSH key to checkout the source).

You must fill in `tpl/settings.toml` file with your Buildkite agent token, and then run `helmc install -g buildkite-agent` which will generate and install the manifest file.

If you want just to generate the manifest file run `helmc generate buildkite-agent` and check the file in `manifests` folder.

Note: node hosts must be make their Docker socket available at `/var/run/docker.sock`
