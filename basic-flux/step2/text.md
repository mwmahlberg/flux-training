Install the GitHub Cli.

`curl -L -o - https://github.com/cli/cli/releases/download/v2.52.0/gh_2.52.0_linux_amd64.tar.gz| tar -xvz --strip-components 1 -C /usr/local/ `{{execute}}

Explanation:

  - `curl -L -o - https://github.com/cli/cli/releases/download/v2.52.0/gh_2.52.0_linux_amd64.tar.gz`{{}} Download the release, follow redirects if necessarry and write the result to stdout.
  - `tar -xvz --strip-components 1 -C /usr/local/`{{}}: Unpack the gzip compressed stdin, remove the first part of the path (`gh_2.52.0_linux_amd64/`{{}}) and put the result into `/usr/local`. Be verbose.