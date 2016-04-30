# Docker Container for Jekyll site generator

See [here](https://jekyllrb.com/) for what Jekyll is.

I use it for locally running my [github.io-page](http://38leinad.github.io/).

Usage:

```
docker run -it --rm=true -v $(pwd):/src -p 4000:4000 jekyll /bin/bash -c "cd /src && jekyll serve --host=0.0.0.0 --watch --force_polling"
```

A self-contained [demo.sh](https://github.com/38leinaD/docker-jekyll/blob/master/demo.sh) shell-script shows how to use the docker-container and generate the static content for a demo-site.

Also, you might want to use docker-compose because it is awesome! Just create a file `docker-compose.yml` like this:

```
jekyll:
  build: ./jekyll
  working_dir: /src
  command: jekyll serve --host=0.0.0.0 --watch --force_polling
  ports:
   - "4000:4000"
  volumes:
   - ./38leinaD.github.io:/src
```

and run

```
docker-compose up
```

### License
[MIT License](https://raw.githubusercontent.com/38leinaD/38leinaD.github.io/master/LICENSE)