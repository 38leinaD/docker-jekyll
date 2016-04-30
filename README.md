# Docker Container for Jekyll site generator

See [here](https://jekyllrb.com/) for what Jekyll is.

Usage:

```
sudo docker run --rm -v "$PWD:/src" grahamc/jekyll build
```

A self-contained [demo.sh](https://github.com/38leinaD/38leinaD.github.io/blob/master/demo.sh) shell-script shows how to use the docker-container and generate the static pages for a demo-site.

or for repeated calls:

```
alias jekyll='sudo docker run --rm -v "$PWD:/src" -p 4000:4000 grahamc/jekyll'
jekyll build
jekyll serve -H 0.0.0.0
```

run as a background daemon:
```
sudo docker run -d -v "$PWD:/src" -p 4000:4000 grahamc/jekyll serve -H 0.0.0.0
```

## Goodies
 - Supports pygments syntax highlighting
 - Supports Github Pages
 - Supports Jekyll Redirect From
 - Supports Kramdown
 - Supports RDiscount
 - Supports Rouge


### License
[MIT License](https://raw.githubusercontent.com/38leinaD/38leinaD.github.io/master/LICENSE)