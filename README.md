## anchore/grype container image
This repository's purpose is building a docker image for running anchore/grype scanner.   
[**grype**](https://github.com/anchore/grype) is a vulnerability scanner for container images and filesystems.  

### build
```bash
docker build -t anchore/grype -f Dockerfile .
```

### run
```bash
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock anchore/grype busybox:latest
```

#### notes
To run `Docker` (specifically: pull container images) inside the `grype` container, we need to expose the Docker socket bind-mounting it with the -v flag.
