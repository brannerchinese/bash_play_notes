## Spacing and quotes

 1. [Dry run of glob expansion](http://www.grymoire.com/Unix/Sh.html#uh-4):

    ```bash
    echo <glob expression>
    ```

    Example: to show all files matched, but not directories or directory-contents:

    ```bash
    echo .*?*
    ```
 
 1. [Protecting against accidental file-deletion with `rm`](http://www.grymoire.com/Unix/Sh.html#uh-5):

    First create file `-i` in directory. Then:

    ```bash
    rm *
    ```

    will probably run as

    ```bash
    rm -i
    ```

    which means "request confirmation for each `rm` action".
    
 1. [Example of renaming `for` loop](http://www.grymoire.com/Unix/Sh.html#uh-5):

    ```bash
    for i in *.OLD
    do
    	mv $i $i.NEW
    done
    ```

 1. [Quoting as "switch" or "toggle"](http://www.grymoire.com/Unix/Sh.html#uh-6):

    These two commands have the same effect:

    ```bash
    rm 'file1 file2'
    rm file1' 'file2
    ```

    Quote-mark toggles "quoting state".

    Adjacent strings and variables are concatenated.

 1. ["Strong" (raw-string) quoting](http://www.grymoire.com/Unix/Sh.html#uh-8)>

    Single quotes quote strings raw:

    ```bash
    $ echo "$HOME"
    /Users/dpb
    $ echo '$HOME'
    $HOME
    ```
 
 1. [Command substitution with \`\`](http://www.grymoire.com/Unix/Sh.html#uh-8):

    ```bash
    $ echo "The current directory is `pwd`"
    The current directory is /Users/dpb/github_databranner/bash_play_notes
    ```

    \`\` evaluates the contents in a [new shell](http://www.grymoire.com/Unix/Sh.html#uh-37). So after `cd <directory>`, the present working directory remains unchanged.

 1. [Put `;` between commands on the same line to ensure sequential execution](http://www.grymoire.com/Unix/Sh.html#uh-13):

    ```bash
    $ a=one; echo $a
    one
    $ a=two echo $a
    one
    ```

[end]
