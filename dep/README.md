# Dockerized golang dep (dependency management)

Allows us to run `dep` commands from within a docker container. Built off of the official golang stretch image in order to have git for repo cloning.

Also, For use inside enterprises and such, I have a bootstrap script installed that will add any `HTTP_PROXY`, `HTTPS_PROXY`,`http_proxy`,or `https_proxy` environment variables to the git config.

## My use case

I created this so I could run dep on a build server which has no go binaries installed, but is fully open to docker. I plan to use it in conjunction with the official golang image for my build pipelines.