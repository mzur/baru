# Baru Ubuntu theme

This is a variant of the [Yaru](https://github.com/ubuntu/yaru) Ubuntu theme.

<p align="center">
   <img src="baru.png" width="200">
</p>

## Installing

1. Install the [User Themes](https://extensions.gnome.org/extension/19/user-themes/) extension.
2. Grab the latest theme release and extract it to `~/.themes`.
3. Grab the latest icon release and extract it to `~/.icons`.
4. Open GNOME Tweak and set the appearance of applications, cursor, icons and shell to "Baru".
5. Restart GNOME shell.

## Building

1. Create the build Docker container with: `docker build -t mzur/baru .`
2. Run the build: `docker run --rm --user=$UID -v $(pwd):/build mzur/baru ./build.sh`
3. You get the `icons.tar.gz` and `themes.tar.gz` release files.
