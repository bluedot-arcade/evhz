# evhz

Show hid device refresh rate under linux + evdev

Reported average is for the last 64 samples, or as many as we have so far.

There exists a kernel bug for USB ports which use the uhci_hcd driver,
where a 1000 hz mouse will only read at 500hz, causing jittering:
https://bugzilla.kernel.org/show_bug.cgi?id=60586. A workaround is to
use USB ports that use the ehci-pci driver.

This is a modified version of the original evhz by Ian Kelling.

Maintainer: Ian Kelling <ian@iankelling.org>

## Build from sources

```sh
git clone git@github.com:bluedot-arcade/evhz.git
cd evhz
make
```

The output will be built in the `build` directory.




