# My facil.io

Based on the [facil.io](https://github.com/boazsegev/facil.io) libdump, I left out redis_engine.h/c and supplied main.c and build.sh for Linux & macOS. 

The result is a 300–500 kB single-binary HTTP server (compiled with ‑Os … ‑Ofast) that I use to serve local documentation for Chrome’s offline Rust/C++ Search Extension (both work fully offline).

## Example: 

$ cat rs_cc.doc.sh

```bash
#!/usr/bin/env bash

pgrep facil|xargs kill
sleep 2
nohup facil -p 3333 -w 1 -t 1 -www /Users/ian/Downloads/html-book-20250209/reference/ 2>&1 > /dev/null &
nohup facil -p 4444 -w 1 -t 1 -www /Users/ian/.rustup/toolchains/stable-aarch64-apple-darwin/share/doc/rust/html 2>&1 > /dev/null &
```

It’s also perfect for serving offline docs for asio, h2o, or any other open-source project—just use -www to point it at the folder.
