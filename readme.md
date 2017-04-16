## Cron in a container

Run cron in a Docker container that can execute commands in other docker containers.

The image includes the `docker` client. Mount the host's docker socket `/var/run/docker.sock` to execute commands in other docker containers running on the host.

The cron container expects a `crontab` file in `/cron/crontab` unless otherwise specified with the `CRONTAB` environment variable. Provide your `crontab` file by mounting the containing directory on `/cron`.

Putting this all together in the example below.

```sh
docker run -v /tmp:/cron -v /var/run/docker.sock:/var/run/docker.sock -d --name cron bartt/cron:latest
```
