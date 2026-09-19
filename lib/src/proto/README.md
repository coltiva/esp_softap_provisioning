# Protobuf files for implementing protocol communication packets

Protocomm uses Google Protobuf for language, transport and architecture agnostic protocol communication. These proto files define the protocomm packet structure, separated across multiple files:
* contants.proto - Defines the "Status" structure for conveying the success or failure of a single protocomm transaction
* sec0.proto - Defines the Security0 Command and Response packet structures
* sec1.proto - Defines the Security1 Command and Response packet structures
* session.proto - Defines the protocomm transacion packets for session establishment which internally has a Security packet as payload

Note : These proto files are not automatically compiled during the build process.

# Compilation

Compilation requires protoc (Protobuf Compiler) and protoc-c (Protobuf C Compiler) installed. Since the generated files are to remain the same, as long as the proto files are not modified, therefore the generated files are already available under `components/protocomm/proto-c` and `components/protocomm/python` directories, and thus running cmake / make (and installing the Protobuf compilers) is optional.

If using `cmake` follow the below steps. If using `make`, jump to Step 2 directly.

## Step 1 (Only for cmake)

When using cmake, first create a build directory and call cmake from inside:

```
mkdir build
cd build
cmake ..
```

## Step 2

Simply run `make` to generate the respective C and Python files. The newly created files will overwrite those under `components/protocomm/proto-c` and `components/protocomm/python`

## network_ctrl.proto

Vendored from `espressif/idf-extra-components`, `network_provisioning` v1.2.4 —
the version the Coltiva firmware pins. It defines the `prov-ctrl` endpoint,
whose `CmdCtrlWifiReset` clears the device's provisioning state machine after
a refused join so corrected credentials can be applied over the same session.

> **The Dart under `dart/network_ctrl.*` was written by hand**, against the
> shape `protoc` produces for the other files here, because no Dart toolchain
> was available where it was added. It carries the usual "generated code"
> header so that a real regeneration diffs cleanly rather than rewriting the
> file wholesale — but it has not itself been through `protoc`.
>
> **Regenerate it before relying on it**, and check the diff is empty:
>
> ```sh
> dart pub global activate protoc_plugin
> protoc --dart_out=lib/src/proto/dart -Ilib/src/proto \
>     lib/src/proto/network_ctrl.proto
> git diff --stat lib/src/proto/dart/
> ```
