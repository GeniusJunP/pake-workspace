# Pake Workspace

This workspace contains customized configuration files, CSS injections, icons, and a Makefile to build tailored macOS desktop applications using the customized `pake` CLI wrapper.

## Contents
- `Makefile`: Commands to quickly build the applications (`make all`, `make twitter`, `make youtube`, etc.)
- `*.css`: Custom CSS injected into the respective apps to hide ads, prompts, or specific elements (e.g., `twitter-adblock.css`).
- `*.js`: Custom JavaScript (like `universal-tweaks.js`) injected into apps to manage viewport zooming and behavior.
- `icons/`: Custom `.icns` files used for the macOS application bundles.

## Building
To build all applications:
```bash
make all
```

To build a specific app:
```bash
make twitter
make youtube
make soundcloud
make instagram
```

The resulting applications will be placed in this folder (e.g., `Twitter.app`) and automatically installed to `/Applications`.
