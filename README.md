# drupal-testing-docker

Docker image for speeding up automated testing.

### Build

`docker build --tag drupal-testing-docker:1.1 .`

#### Build as amd64 on M1

`docker build . --file Dockerfile --tag penance316/drupal-testing-docker:8.1 --platform linux/amd64`

### Run as container (to test)

`docker run --name drupal-testing-docker drupal-testing-docker:1.1`
