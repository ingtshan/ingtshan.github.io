# hugo source code of ingtshan'blog 

```text
`--$BLOGDIR
   |--content
   |--public
   `--hugo
      |--content -> ../content
      `--public -> ../public
```

## install
BLOGDIR is where you want to put all my stuff in this repo
``` shen
# say BLOGDIR=~/blog
cd $BLOGDIR
mkdir content
mkdir public
git clone --single-branch --branch hugo git@github.com:ingtshan/ingtshan.github.io.git hugo
cd hugo
git submodule update --init --recursive
chmod +x deploy.sh
```
