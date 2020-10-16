# homebrew-zenoh

The zenoh public homebrew tap for OS X homebrew formulae

## Installing zenoh
```
    brew tap eclipse-zenoh/homebrew-zenoh
```

```
    brew install zenoh
```

## Dependency tree
```
zenoh                - the Zero Overhead Pub/sub, Store/Query and Compute protocol
 |_ zenoh-http       - a REST API plugin for zenoh
 |   \_ zenohd       - the zenoh router
 |_ zenoh-storages   - a storage plugin for zenoh
 |   \_ zenohd       - the zenoh router
 \_ libzenohc        - the C API library
```
