README

The docker file needs to be loaded:

```bash
docker load -i spectrum_docker.tar
```

Now you can run it up with:

```bash
xhost+  # Note - this exposes your X connection globally, but I haven't found a way to make it work without this (yet?)
docker run --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix spectrum:latest
```

Once inside the emulator you can load each of the programmes using the following commands:

`Media -> Tape -> Open...`

Select one of the tapes in `/home/spectrum/tapes`

Type `LOAD ""` by pressing the `J`(\*) key, then `ctrl-P` twice, then press enter.

To display the programme, type `LIST` by pressing the `K` key followed by enter.

To run the programme, type `RUN` by pressing the `A` key followed by enter.


(\*) Note that the Spectrum has a somewhat vi-like command entry system - the cursor will switch between a "K" and a "L" indicating "Keyword" and "Literal" modes (and a couple of other modes). In Keyword mode, each key has an associated keyword that will be entered by typing that letter. A convenient keyboard with each of the keyword mappings is displayed if you select Help -> Keyboard.

The files in 0.Triangle/Evidence are screenshots and a video of the first challenge working on a real Spectrum!