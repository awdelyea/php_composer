# PHP5 Composer Container

This is a docker image for running composer

## Prerequisites

This docker container expects the following file structure:
```
/Data
|--> /http
|--> /config
|--> /logs
|--> /secure
```

## Installation

```sh
docker build -t awdelyea/php_composer git://github.com/awdelyea/php_composer
```

## How To Use

If running this in a dev environment with an already running 'data' container:
```sh
docker run --rm --volumes-from="data" -it awdelyea/php_composer
```

If running standalone:
```sh
docker run --rm --privileged=true -v <path/to/app>:/data/ -it awdelyea/php_composer
```
