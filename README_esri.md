# How to build for runtimecore

The library requires also an installation of gcc. Linux machine should come with one, but if not, run the following and the correct
supported gcc version will be installed in `usr/

```bash
sudo apt install gcc
```

If updating libbacktrace to a newer version (commit), you have to update the short commit hash used to build the library in the script contained in the folder `./esri` 

------

Only needed for linux

## linux

```bash
cd esri
./build_linux.sh
```

The final library with needed headers will be installed in `./esri/build` and it will be zipped in the same folder. You need to upload it to the shared zip network.
