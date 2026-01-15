# How to build for runtimecore

The library requires also an installation of gcc. Linux machine should come with one, but if not, run the following and the correct
supported gcc version will be installed in `usr/

```bash
sudo apt install gcc
```

Update the version of compilers in the script in the folder `./esri`

- llvm 19.1.2

Only needed for linux

## linux

```bash
cd esri
./build_linux.sh
```

The final library with needed headers will be installed in `./esri/build`
