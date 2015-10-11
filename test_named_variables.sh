#!/bin/sh
echo "tenth positional variable only: ${10:?'missing'}" "\nName of script: $0" "\nAll positional variables: $*\nAll positional variables including spaces: $@" "\nNumber of parameters: $#"
