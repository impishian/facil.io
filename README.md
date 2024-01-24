# facil.io

https://github.com/boazsegev/facil.io

facil.io's libdump , -redis_engine.h, -redis_engine.c,  +main.c, +build.sh (Linux/MacOS)

----

Google Chrome's C++ Search Extension or Rust Search Extension, can run in local Offline mode.

I use facil.io as a local http server for these two extensions.

The facil.io executable file is about 400~500KB.

----

```
$ cat rs_cc.doc.sh
#!/usr/bin/env bash

pgrep facil|xargs kill
sleep 2
nohup facil -p 3333 -w 1 -t 1 -www /Users/ian/Downloads/html-book-20211231/reference/ 2>&1 > /dev/null &
nohup facil -p 4444 -w 1 -t 1 -www /Users/ian/.rustup/toolchains/stable-x86_64-apple-darwin/share/doc/rust/html 2>&1 > /dev/null &
```
