## Objective

This is a very simple toy project for running one of the toy R-shiny apps with Docker.

## Requirements

Have `Docker` and `docker-compose` installed.

## Instructions

1. Build the container:

```console
user@my-pc:~$ docker-compose build
```

2. Start the container:

```console
user@my-pc:~$ docker-compose up
```

3. Enjoy your app at `http://localhost:9000`!

## How to extend this toy example

- To change the port that your app is using in the host machine just change the `port` argument in the `docker-compose.yml` file from `9000` to another value.
- To test the other 11 example apps from [rstudio/shiny-examples](https://github.com/rstudio/shiny-examples/tree/main) just change the `runExample` argument inside `app.R`. Eg:

```R
runExample("01_hello") -> runExample("02_text")
```

