## Configure your environment

```
$ chmod +x run.sh
$ docker-compose build
```

## Run the application

```
$ docker-compose up web
```

## Bash

```
$ docker-compose run --rm web bash
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Deploy

[hobby-dev-elixir](https://hobby-dev-elixir.herokuapp.com/)

## Restore locally from dump
```
$ ./dump_db_from_heroku
```
