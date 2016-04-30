# Docker Container for Jekyll site generator

See [here](https://jekyllrb.com/) for what Jekyll is.

Usage:

```
docker run -it --rm=true -v $(pwd):/src -p 4000:4000 jekyll /bin/bash -c "cd /src && jekyll serve --host=0.0.0.0 --watch --force_polling"
```

A self-contained [demo.sh](https://github.com/38leinaD/38leinaD.github.io/blob/master/demo.sh) shell-script shows how to use the docker-container and generate the static content for a demo-site.

### License
[MIT License](https://raw.githubusercontent.com/38leinaD/38leinaD.github.io/master/LICENSE)