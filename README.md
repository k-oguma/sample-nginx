# sample-nginx
for test and sample code.

This sample code is try_files for all path. And using an internal. If file exists, all go to @backend. Because "internal" is set for path of /assets/, it is rejected except for internal access.

http://nginx.org/en/docs/http/ngx_http_core_module.html#try_files
http://nginx.org/en/docs/http/ngx_http_core_module.html#internal

localhost:80 -> localhost:3000

/hoge/ -> OK
/assets/ -> NG for using an internal.

## Usage

```sh
make
```

```sh
curl localhost
curl http://localhost/hoge/
curl http://localhost/assets/
```

### Clean up

```sh
make clean
```
Docker processes and images is deleted.
