# Balancing Risk Portfolio

Usage in a nutshell:

* Build Docker image (once and then only if Dockerfile changes): `bash build.sh`
* Create and start Jupyter container: `bash run.sh [port]` (default port is 8000)
* Stop Jupyter container: `docker stop balance`
* Start Jupyter container again: `docker start balance`
* Remove container: `docker rm balance`
