# konqueror-docker

I would like to say [Konqueror](https://en.wikipedia.org/wiki/Konqueror) is "Safari for Linux". They have a similar rendering engine, so if a Safari user ask you to fix bugs only on Safari and you cannot launch Safari because you are using a Linux desktop, you MAY use Konqueror as a Safari to fix the issue. However, Konqueror comes with massive dependencies, such as KWallet and KFontVeiwer and so on. I don't want to pollute my clean Linux environment based on i3, so I created this Docker image to run Konqueror on Docker and show Konqueror screen on X11 session of the host machine.

# Run it

```
docker run --net="host" -it --rm -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=:0 -e QT_QPA_PLATFORM=xcb acro5piano/konqueror
```
