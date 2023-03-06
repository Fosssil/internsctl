#!/usr/bin/env bash

Help() {
    # Display Help
    echo ""
    echo "internsctl v0.1.0"
    echo "command to display cpu and memory information"
    echo ""
    echo "Syntax: internsctl [cpu|memory] getinfo"
    echo "args:"
    echo "  cpu          Print information about cpu."
    echo "  memory       Print status of free memory."
    echo "options:"
    echo "  --help       Print this help"
    echo "  --version    Print software version and exit."
    echo
}

if [[ $1 == "cpu" ]] && [[ $2 == "getinfo" ]]; then
    command lscpu
elif [[ $1 == "memory" ]] && [[ $2 == "getinfo" ]]; then
    command free -mht
elif [[ $1 == "--help" ]]; then
    Help
elif [[ $1 == "--version" ]]; then
    echo -e "\033[0;32minternsctl v0.1.0\033[0m"

else
    echo -e "\033[31merror: invalid option\033[0m"
    echo "See the output of internsctl --help for a summary of options or get help from man page."
fi
