## Miscellaneous hacks

 1. General "dry-run" functionality for Bash commands.

    2. '[preexec.bash](http://www.twistedmatrix.com/users/glyph/preexec.bash.txt)`.
        [Discussion](http://superuser.com/questions/175799/does-bash-have-a-hook-that-is-run-before-executing-a-command/175802)

    2. `echo !<cmd>`: expands command without running it.

       Similarly `!!:s/echo //`.

    2. <command> ctrl + option + e

 1. Repeat last command with root permission.

    2. `sudo !!`
    2. `alias plz='eval sudo "$(fc -nl -1)"'`

 1. Repeat last word of previous command: `!$`. Example:

    ```bash
    mkdir some-directory
    cd !$
    ```

[end]
