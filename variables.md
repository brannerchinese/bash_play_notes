## Variables

 1. [Display variables with `set`](http://www.grymoire.com/Unix/Sh.html#uh-15).

 1. [Special environment variables](http://www.grymoire.com/Unix/Sh.html#uh-17):

    * `PATH`
    * `HOME`
    * `CDPATH`: additional directories to `cd` into if default not found locally.
    * ...

 1. [Surround variables in curly braces in order to modify the name](http://www.grymoire.com/Unix/Sh.html#uh-30):

    ```bash
    $ x='notes.md~'
    $ cp $x ${x}_dup
    $ ls not*
    notes.md~     notes.md~_dup
    ```

 1. [Define alternate behavior if variable is undefined](http://www.grymoire.com/Unix/Sh.html#uh-30):

    * `${variable?value}`: `echo $value` if `$variable` undefined
    * `${variable-value}`: `echo $value` if `$variable` undefined
    * `${variable+value}`: `echo $value` if `$variable` *defined*

      ```bash
      $ echo $q

      $ echo ${q+'rrr'}

      $ q=5
      $ echo ${q+'rrr'}
      rrr
      ```

    * `${variable=value}`: `echo $value` if `$variable` undefined, and redefine
 
 1. [Define alternate behavior if variable is null (e.g., "") or undefined](http://www.grymoire.com/Unix/Sh.html#uh-36):

    * `${variable:?value}`: `echo $value` if `$variable` null or undefined
    * `${variable:-value}`: `echo $value` if `$variable` null or undefined
    * `${variable:+value}`: `echo $value` if `$variable` null or *defined*

      ```bash
      $ echo $v
  
      $ echo ${v-'rrr'}
      rrr
      $ v=''
      $ echo ${v-'rrr'}
  
      $ echo ${v:-'rrr'}
      rrr
      ```

    * `${variable:=value}`: `echo $value` if `$variable` null or undefined, and redefine

 1. [Positional variables](http://www.grymoire.com/Unix/Sh.html#uh-39):

    Create script `test_named_variables.sh`

    ```bash
    #!/bin/sh
    echo "tenth positional variable only: ${10:?'missing'}" "\nName of script: $0" "\nAll positional variables: $*\nAll positional variables including spaces: $@" "\nNumber of parameters: $#" 
    ```

    Make executable:

    ```bash
    chmod a+x test_named_variables.sh
    ```

    Run:

    ```bash
    $ ./test_named_variables.sh a b c d e f "g g" h i j
    tenth positional variable only: j 
    Name of script: ./test_named_variables.sh 
    All positional variables: a b c d e f g g h i j
    All positional variables including spaces: a b c d e f g g h i j
    Number of parameters: 10
    ```

    * `shift`: discard `$1` and shift all other positional variables down one integer

    * `$$`: current PID
    * `$?`: error status of previous program
    * `$!`: PID of background job


[end]
