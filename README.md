## Instructions

1. Run `./setup_plugin.sh` to setup the grpc-gateway gen-openapi2 plugin in ./bin.
2. Add `./bin` to your PATH:

```
export PATH="$(pwd)/bin":"$PATH"
```

3. Run `buf generate`

### Expected

An error as the openapi plugin reports an error
due to the commented id field in service.proto.

### Actual

No error is reported, and no service.swagger.json is generated.

buf generate succeeds with exit code 0.
