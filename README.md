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

``` shen
cd $BLOGDIR
mkdir content
mkdir public
git clone --single-branch --branch hugo git@github.com:ingtshan/ingtshan.github.io.git hugo
cd hugo
git submodule update --init --recursive
```
