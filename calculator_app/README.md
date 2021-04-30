## Description

`calculator_app` is basic webapp that performs "addition" and "subtraction" operations to demonstrate the basic usage of a webservice in docker.
Is is build on the [kwikapi App](https://github.com/deep-compute/kwikapi) framework.

## Usage

### Using CLI

1. Build docker image
```
docker build . -t <tag-name> -f Dockerfile
```

2. Run the docker image
```
docker run -p <machine-port>:<app-port> <tag-name>
```
- machine-port - Machine's port that you want to allocate to the app.
- app-port - The actual port on which app is running in the docker.

3. Test APIs
- In browser:
URL: http://localhost:<machine-port>/api/v1/add?a=1&b=4
- In terminal:
```
wget -O - --quiet "http://localhost:<machine-port>/api/v1/add?a=1&b=4"
```

### Using docker-compose

1. Using local build
```
docker-compose -f calc_compose_1.yaml
```
2. Using the image
```
docker-compose -f calc_compose_2.yaml
```
