## JZ Native Messaging host

> [JZ](https://github.com/dy/jz)
>
> JZ (javascript zero) compiles JavaScript to fast, minimal WASM.

### Install
```shell
git clone https://github.com/dy/jz.git 
cd jz
bun install
cd ..
```

### Compile
#### wasm32-wasip1
```shell
node ./jz/cli.js ./nm_jz.js -o ./nm_jz.wasm --host wasi
```

#### Native executable
```shell
WABT_DIR=$HOME/bin/wabt bun ./jz/scripts/native/compile.mjs ./nm_jz.js -o ./nm_jz
```

where the environmental variable `WABT_DIR` is path to
[WebAssembly Binary Toolkit directory](https://github.com/webassembly/wabt) for
`wasm2c`.

## Installation and usage on Chrome and Chromium

1. Navigate to `chrome://extensions`.
2. Toggle `Developer mode`.
3. Click `Load unpacked`.
4. Select `native-messaging-jz` folder.
5. Note the generated extension ID.
6. Open `nm_jz.json` in a text editor, set `"path"` to absolute path of of 
`nm_jz.sh` (shellscript to execute `wasmtime nm_jz.wasm`), or `nm_jz` 
(native executable), and `chrome-extension://<ID>/` using ID from 5 in 
`"allowed_origins"` array; and make sure `wasmtime` is in `PATH` and `nm_jz.sh` 
is executable (when executing `nm_jz.wasm` with a WASM runtime). 
7. Copy the file to Chrome or Chromium configuration folder, e.g., Chromium on Linux 
`~/.config/chromium/NativeMessagingHosts`; Chrome dev channel on Linux 
`~/.config/google-chrome-unstable/NativeMessagingHosts`.
8. To test click service worker link in panel of unpacked extension which is 
DevTools for background.js in MV3 ServiceWorker, observe echo'ed message from 
`jz` Native Messaging host. To disconnect run `port.disconnect()`.

The Native Messaging host echoes back the message passed. 

For differences between OS and browser implementations see [Chrome incompatibilities](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Chrome_incompatibilities#native_messaging).

### Test standalone

#### Deno
```shell
deno -A ./nm_standalone_test.js wasmtime ./nm_jz.wasm
```
#### Node.js
```shell
node ./nm_standalone_test_node.js ./nm_jz
```

Expected roundtrip of 

```javascript
try {
  for (
    const message of [
      Array(209715),
      "test",
      "",
      1,
      new Uint8Array([97]),
      Array(209715 * 64),
    ]
  ) {
    const result = await echoNativeMessage(message);
    console.log(result);
  }
} catch (e) {
  console.log(e.stack);
  console.trace();
} finally {
  subprocess.kill("SIGTERM");
}

```

- 1 MiB JSON array filled with `null` values
- JSON string `"test"`
- JSON empty string `""`
- JSON number `1`
- JSON object `{0:97}`
- 64 MiB of JSON arrays filled with `null` values at 1 MiB maximum JSON array length per message

### Test multiple Native Messaging hosts

For each Native Messaging host create a host manifest, in the same form as, and include the extension ID that points to a single extension to run all hosts, for example

```json
{
  "name": "nm_jz",
  "description": "JZ Native Messaging Host",
  "path": "/home/user/native-messaging-dart/nm_jz",
  "type": "stdio",
  "allowed_origins": [
    "chrome-extension://xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/",
    "chrome-extension://zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz/"
  ]
}
```

```json
{
  "name": "nm_zig_wasi",
  "description": "Zig WASI Native Messaging host",
  "path": "/home/user/native-messaging-webassembly/nm_zig_wasi.sh",
  "type": "stdio",
  "allowed_origins": [
    "chrome-extension://vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv/",
    "chrome-extension://zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz/"
  ]
}
```
where the extension ID `zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz` connects to multiple Native Messaging hosts, e.g., [NativeMessagingHosts](https://github.com/guest271314/NativeMessagingHosts), from the same extension. Then run the script `test_stdin.js` to compare performance between hosts in DevTools Snippets or Console; on the HTML extension page; in background pages; in `ServiceWorker` of the extension

```devtools
async function nativeMessagingPerformanceTest(i = 1, ...rt) {
  const runtimes = rt?.length
    ? new Map(rt.map((host) => [host, 0]))
    : new Map([
    ["nm_assemblyscript", 0],
    // ["nm_bash", 0],
    ["nm_bun", 0],
    ["nm_c", 0],
    ["nm_cpp", 0],
    ["nm_d8", 0],
    // ["nm_llrt", 0], // Uses subprocess to read STDIN
    ["nm_nodejs", 0],
    ["nm_python", 0],
    ["nm_qjs", 0],
    ["nm_rust", 0],
    ["nm_shermes", 0],
    ["nm_spidermonkey", 0],
    ["nm_tjs", 0],
    ["nm_typescript", 0],
    ["nm_wasm", 0],
    ["nm_ruby", 0],
    ["nm_go", 0],
    ["nm_lua", 0],
    ["nm_boa", 0],
    ["nm_rquickjs", 0],
    ["nm_runjs", 0],
    ["nm_scriptc", 0],
    ["nm_componentize_js", 0],
    ["nm_componentize_qjs", 0],
    ["nm_js2wasm", 0],
    ["nm_zig", 0],
    ["nm_zig_wasi", 0],
    ["nm_tinygo_wasi", 0],
    ["nm_warpo", 0],
    ["nm_c_wasi", 0],
    ["nm_cpp_wasi", 0],
    ["nm_rust_wasi", 0],
    ["nm_php", 0],
    ["nm_go_wasi", 0],
    ["nm_javy", 0],
    ["nm_javy_node_wasi", 0],
    ["nm_qjs_wasi", 0],
    ["nm_dart", 0],
    ["nm_d", 0],
    ["nm_deno", 0],
    ["nm_dart", 0],
    ["nm_jz", 0]
  ]);
  const MAX = 209715*64;
  for (let j = 0; j < i; j++) {
    for (const [runtime] of runtimes) {
      console.log(`${runtime} run no. ${j} of ${i}}`);
      try {
        let len = 0;
        const { resolve, reject, promise } = Promise.withResolvers();
        const now = performance.now();
        const port = chrome.runtime.connectNative(runtime);
        port.onMessage.addListener((message) => {
          len += message.length;
          if (len < MAX) return;
          console.assert(len === MAX, {
            message,
            runtime,
          });
          const n = runtimes.get(runtime);
          runtimes.set(runtime, n + ((performance.now() - now) / 1000));
          port.disconnect();
          resolve();
        });
        port.onDisconnect.addListener(() => reject(chrome.runtime.lastError));
        port.postMessage(new Array(MAX));
        // Handle SpiderMonkey, send "\r\n\r\n" to process full message with js
        if (runtime === "nm_spidermonkey") {
          port.postMessage("\r\n\r\n");
        }
        await promise;
      } catch (e) {
        console.log(e, runtime);
        continue;
      }
    }
    await scheduler.postTask(() => {}, {
      delay: 10
    });
  }
  const sorted = [...runtimes].map(([k, n]) => [k, n / i]).sort((
    [, a],
    [, b],
  ) => a < b ? -1 : a === b ? 0 : 1);
  console.table(sorted);
}

await nativeMessagingPerformanceTest(200); // Run each host 200 times
```

which will render a table in DevTools showing fastest to slowest average time per host to roundtrip 64 MiB JSON array containing `null` values

```devtools
0	'nm_d'	0 # Chromium bug can't find D host
1	'nm_qjs_wasi'	1.2012000000029803
2	'nm_zig_wasi'	1.2194000000059604
3	'nm_runjs'	1.2237000000029803
4	'nm_go_wasi'	1.22739999999851
5	'nm_cpp'	1.2416000000014902
6	'nm_rust_wasi'	1.2428000000044703
7	'nm_scriptc'	1.2472999999970198
8	'nm_rust'	1.2546999999955297
9	'nm_tjs'	1.2549000000059605
10	'nm_javy'	1.2736000000014902
11	'nm_php'	1.2877000000029801
12	'nm_assemblyscript'	1.3014000000059605
13	'nm_nodejs'	1.3262999999970198
14	'nm_c'	1.3393000000044704
15	'nm_rquickjs'	1.36160000000149
16	'nm_deno'	1.3671000000014901
17	'nm_jz'	1.38239999999851
18	'nm_qjs'	1.3845999999940395
19	'nm_zig'	1.4035
20	'nm_javy_node_wasi'	1.4125
21	'nm_wasm'	1.4186999999955296
22	'nm_d8'	1.46260000000149
23	'nm_lua'	1.4748000000044703
24	'nm_typescript'	1.4787000000029802
25	'nm_warpo'	1.4938000000044704
26	'nm_bun'	1.5103000000044704
27	'nm_tinygo_wasi'	1.6107000000029803
28	'nm_python'	1.6618999999985098
29	'nm_c_wasi'	1.6679000000059605
30	'nm_dart'	1.6718000000044704
31	'nm_shermes'	1.6782999999970198
32	'nm_boa'	1.8568999999985099
33	'nm_ruby'	1.87410000000149
34	'nm_cpp_wasi'	2.3683000000044703
35	'nm_go'	2.428
36	'nm_componentize_qjs'	3.19289999999851
37	'nm_componentize_js'	3.5021999999955296
38	'nm_spidermonkey'	5.55439999999851
39	'nm_js2wasm' 9.263699999995529
```

Run `nm_jz` 100 times
```devtools
await nativeMessagingPerformanceTest(100, "nm_jz");
```

Run `nm_jz`, `nm_lua`, `nm_zig` for comparsion of average time per host for 500 roundtrips
```devtools
await nativeMessagingPerformanceTest(500, "nm_jz", "nm_lua", "nm_zig");
```

## Native messaging documentation
- [Chrome Developers](https://developer.chrome.com/docs/extensions/mv3/nativeMessaging/)
- [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/Native_messaging)
- [Microsoft Edge Developer documentation](https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/developer-guide/native-messaging)
- [Messaging between the app and JavaScript in a Safari web extension](https://developer.apple.com/documentation/safariservices/messaging-between-the-app-and-javascript-in-a-safari-web-extension)
- [Opera help Native messaging](https://help.opera.com/en/extensions/message-passing/#native-messaging)

[Native messaging protocol](https://developer.chrome.com/docs/extensions/mv3/nativeMessaging/#native-messaging-host-protocol) (Chrome Developers)

> Chrome starts each native messaging host in a separate process and communicates with it using standard input (`stdin`) and standard output (`stdout`). The same format is used to send messages in both directions; each message is serialized using JSON, UTF-8 encoded and is preceded with 32-bit message length in native byte order. The maximum size of a single message from the native messaging host is 1 MB, mainly to protect Chrome from misbehaving native applications. The maximum size of the message sent to the native messaging host is 64 MiB.
>
> The first argument to the native messaging host is the origin of the caller, usually `chrome-extension://[ID of allowed extension]`. This allows native messaging hosts to identify the source of the message when multiple extensions are specified in the allowed_origins key in the [native messaging host manifest](https://developer.chrome.com/docs/extensions/develop/concepts/native-messaging#native-messaging-host).




## License
Do What the Fuck You Want to Public License [WTFPLv2](http://www.wtfpl.net/about/)
