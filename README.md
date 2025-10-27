# My facil.io

Based on the [facil.io](https://github.com/boazsegev/facil.io) libdump, removed some files (redis_engine.h/c, tls, mustache, hpack, resp_parser), and added main.c & build.sh (for Linux & macOS). 

The result is a 300–500 kB single-binary HTTP server (compiled with ‑Os … ‑Ofast) that I use to serve local documentation for Chrome’s offline Rust/C++ Search Extension (both work fully offline).

```bash
$ facil -h

This application accepts any of the following possible arguments:

Address binding:
 -port ##	port number to listen to. defaults port 3000
 -p ##   	(same as -port)
 -bind <>	address to listen to. defaults any available.
 -b <>   	(same as -bind)

Concurrency:
 -workers ##	number of processes to use.
 -w ##      	(same as -workers)
 -threads ##	number of threads per process.
 -t ##      	(same as -threads)

HTTP Server:
 -public <>	public folder, for static file service.
 -www <>   	(same as -public)
 -keep-alive ##	HTTP keep-alive timeout (0..255). default: ~5s
 -k ##         	(same as -keep-alive)
 -max-body ##	HTTP upload limit. default: ~50Mb
 -maxbd ##   	(same as -max-body)
 -log   	request verbosity (logging).
 -v     	(same as -log)

Use any of the following input formats:
	-arg <value>	-arg=<value>	-arg<value>

Use the -h, -help or -? to get this information again.
```

## Example: 

$ cat rs_cc.doc.sh

```bash
#!/usr/bin/env bash

pkill facil
sleep 2
nohup facil -p 3333 -w 1 -t 1 -www /Users/ian/Downloads/html-book-20250209/reference/ 2>&1 > /dev/null &
nohup facil -p 4444 -w 1 -t 1 -www /Users/ian/.rustup/toolchains/stable-aarch64-apple-darwin/share/doc/rust/html 2>&1 > /dev/null &
```

It’s also perfect for serving offline docs for asio, h2o, or any other open-source project—just use -www to point it at the folder.
