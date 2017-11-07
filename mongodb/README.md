# MongoDB for National Parks

This Habitat plan describes how Mongo DB should be run to support the National Parks application. This differs from the `core/mongodb` plan in the following ways:

* Adds a dependency on `core/mongo-tools` to provide tools to the post-run hook, `hooks/post-run`.
* Copies the `../national-parks.json` into the package that is later used to populated the database in the post-run hook, `hooks/post-run`.
* Provides updated configuration defaults, `default.toml`, that allow for all connections without any forms of security. You can see `mongod.net.bind_ip` is set to "0.0.0.0" and `mongod.security.cluster_auth_mode` is set to "".
