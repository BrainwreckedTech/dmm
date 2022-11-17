# What is this?

This is a continuation of the work done by [Caliel666](https://github.com/Caliel666/DivaModManager).

This is a script that sets up
[DivaModManager](https://github.com/TekkaGB/DivaModManager)
on Linux using [WINE](https://www.winehq.org/).  DivaModManager is mod manager
for [Hatsune Miku Project DIVA Mega Mix+](https://store.steampowered.com/app/1761390/Hatsune_Miku_Project_DIVA_Mega_Mix/)
written in [.NET](https://dotnet.microsoft.com/). While .NET isn't
_technically_ Windows-only, projects using it must target compilation of their
.NET application on Linux.  DivaModManager doesn't do this, so Linux users are
stuck using WINE.  However, DivaModManager requires .NET Runtime 6.0.2 and
.NET >= 5.0 cannot install in vanilla WINE.

This script will download the latest
[GE build of WINE](https://github.com/GloriousEggroll/wine-ge-custom),
which can accomodate .NET >= 5.0, and set up a custom WINE prefix.  It'll then
download .NET Runtime 6.0.2 and install that into the prefix.  Finally, it'll
download DivaModManager, unpack it, and set up shortcuts to launch DivaModManager.

# Dependancies

- coreutils
    - basename
    - cp
    - env
    - mkdir
    - realpath
    - rm
- curl
- find
- grep
- pv
- sed
- tar
- wine
- unzip

# How to run?

`dmm <run|install|upgrade>`

run
: Runs DivaModManager.  Useful if you want to run DivaModManager from the command line, or something happened with the `.dekstop` shortcut

install
: Install everything needed to run DivaModManager under Linux.  Creates `.desktop` shortcut.

upgrade
: Upgrade `dotnet` (not implemented yet) or `proton`

# Known issues

- You won't be able to run the game via DivaModManager.  It would require having Steam running on WINE in the same prefix.
