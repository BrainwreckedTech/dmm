#############
What is this?
#############

This is a continuation of the work done by `Caliel666 <https://github.com/Caliel666/DivaModManager>`_.

This is a script that sets up `DivaModManager`_ on Linux using `WINE`_.
DivaModManager is mod manager for `Hatsune Miku Project DIVA Mega Mix+`_
written in `.NET`_. While .NET isn't *technically* Windows-only, projects
using it must target compilation of their .NET application on Linux.
DivaModManager doesn't do this, so Linux users are stuck using WINE.
However, DivaModManager requires .NET Runtime 6.0.2 and .NET >= 5.0 cannot
install in vanilla WINE.

.. _DivaModManager: https://github.com/TekkaGB/DivaModManager
.. _WINE: https://www.winehq.org/
.. _Hatsune Miku Project DIVA Mega Mix+: https://store.steampowered.com/app/1761390/Hatsune_Miku_Project_DIVA_Mega_Mix/
.. _.NET: https://dotnet.microsoft.com/

This script will download the latest `GE build of WINE`_ which can accomodate
.NET >= 5.0, and set up a custom WINE prefix.  It'll then download .NET Runtime
6.0.2 and install that into the prefix.  Finally, it'll download DivaModManager,
unpack it, and set up shortcuts to launch DivaModManager.

.. _GE build of WINE: https://github.com/GloriousEggroll/wine-ge-custom

############
Dependancies
############

* coreutils

    * basename
    * cp
    * env
    * mkdir
    * realpath
    * rm

* curl
* find
* grep
* pv
* sed
* tar
* unzip

###########
How to run?
###########

``dmm <run|install|upgrade>``

run
    Runs DivaModManager.  Useful if you want to run DivaModManager from the command line, or something happened with the ``.dekstop`` shortcut

install
    Install everything needed to run DivaModManager under Linux.  Creates ``.desktop`` shortcut.

upgrade
    Upgrade ``dotnet`` (not implemented yet) or ``proton``

############
Known issues
############

- You won't be able to run the game via DivaModManager.  It would require having Steam running on WINE in the same prefix.
