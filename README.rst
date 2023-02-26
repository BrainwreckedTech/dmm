.. |LicenseBadge| image:: https://img.shields.io/github/license/BrainwreckedTech/dmm?style=flat-square
   :alt: Licensed under GPL 3.0

.. |LanguageBadge| image:: https://img.shields.io/badge/written%20in-POSIX%20sh-blue?style=flat-square
   :alt: Written in POSIX sh

|LicenseBadge| |LanguageBadge|

#############
What is this?
#############

This is a continuation of the work done by `Caliel666 <https://github.com/Caliel666/DivaModManager>`_.

This is a script that sets up `DivaModManager`_ on Linux using `WINE`_.
DivaModManager is a mod manager for `Hatsune Miku Project DIVA Mega Mix+`_
written in `.NET`_. While .NET isn't *technically* Windows-only, projects
using it must target compilation of their .NET application on Linux.
DivaModManager doesn't do this, so Linux users are stuck using WINE.
However, DivaModManager requires .NET Runtime >=6.0.2 and .NET >= 5.0 cannot
install in vanilla WINE.

.. _DivaModManager: https://github.com/TekkaGB/DivaModManager
.. _WINE: https://www.winehq.org/
.. _Hatsune Miku Project DIVA Mega Mix+: https://store.steampowered.com/app/1761390/Hatsune_Miku_Project_DIVA_Mega_Mix/
.. _.NET: https://dotnet.microsoft.com/

This script performs the following steps:

#. Download the latest `GE build of WINE`_ which can accomodate .NET >= 5.0,
   and set up a custom WINE prefix.
#. Download the latest version of `.NET Runtime 6.0`_ and install it into
   the prefix.
#. Download DivaModManager, unpack it, and set up shortcuts to launch it.

.. _GE build of WINE: https://github.com/GloriousEggroll/wine-ge-custom
.. _.NET Runtime 6.0: https://dotnet.microsoft.com/en-us/download/dotnet/6.0

################
Why not use d4m?
################

Because `d4m`_ will currently `bork any mod that utilizes variants`_.

Using dmm to set up DivaModManger under Linux makes the process painless.

.. _d4m: https://github.com/Brod8362/d4m
.. _bork any mod that utilizes variants: https://github.com/Brod8362/d4m/issues/27

############
Dependencies
############

The ``dmm`` script will check for all of these and let you know which ones it
cannot find.

* coreutils

    * basename
    * cp
    * head
    * env
    * mkdir
    * printf
    * realpath
    * rm

* Often installed as part of a "base" installation

    * curl
    * find
    * grep
    * sed
    * tar

* Usually installed as part of "complete" installations

    * unzip

* This one is optional (because of Steam Deck) but will provide a progress bar if present

    * pv (used by ``dmm`` for progress during tarball extraction)

###########
How to run?
###########

The ``dmm`` script can either be run from the directory you ``git clone`` into,
or you can run ``install.sh`` to install files to
``/usr/local/{bin,share/applications,share/pixmaps}`` for systemwide use.

``dmm <run|install|upgrade>``

run
    Runs DivaModManager.  Useful if you want to run DivaModManager from the command line, or something happened with the ``.dekstop`` shortcut

install
    Install everything needed to run DivaModManager under Linux.  Creates ``.desktop`` shortcut.

upgrade [7zip|dotnet|proton]
    With no arguments, print version information.  With argument, upgrade specified component.

############
Known issues
############

- You won't be able to run the game via DivaModManager.  It would require having Steam running on WINE in the same prefix.
