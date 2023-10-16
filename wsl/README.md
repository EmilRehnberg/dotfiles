# WSL (Windows Subsystem Linux) settings

## Overiew

See ubuntu README for other instructions.

some cutting edge stuff won't work on here e.g. dein and probably other Shougo stuff doesn't work properly. Otherwise it should be rather similar to real Ubuntu Linux

## Remap Caps to Ctrl

Download PowerToys (available through "company portal").

Launch PowerToys (as administrator), select "Remap keys".

## Special WSL setup

for graphical setup

DL Xming from [SourceForge](https://sourceforge.net/projects/xming/)

if X11cairo is failing to start, try running xming windows application (search and start)

## R issues

Due to file permissions issues etc.
Some packages need to run `Sys.setenv(R_INSTALL_STAGED = FALSE)` before installation.
