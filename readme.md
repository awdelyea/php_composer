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
docker build -t adelyea/php_composer git://github.com/adelyea/php_composer
```

## How To Use

If running this in a dev environment with an already running 'data' container:
```sh
docker run --rm --volumes-from="data" -it adelyea/php_composer
```

If running standalone:
```sh
docker run --rm --privileged=true -v <path/to/app>:/data/ -it adelyea/php_composer
```
