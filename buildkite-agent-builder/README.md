# Buildkite Agent Builder

This Chart provides a [Buildkite Agent](https://buildkite.com/docs/agent) Docker Builder (DIND) for running build automation tasks on public git repositories (where you don't need a private SSH key to checkout the source) as building Docker images and pushing them to Docker Registry.

You must fill in `tpl/settings.toml` file with your Buildkite agent token, and then run `helmc install -g buildkite-agent-builder` which will generate and install the manifest file.

If you want just to generate the manifest file run `helmc generate buildkite-agent-builder` and check the file in `manifests` folder.

Note: node hosts must be make their Docker socket available at `/var/run/docker.sock`
