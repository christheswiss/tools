#!/bin/bash

/usr/local/bin/brew update;
outdated="$(/usr/local/bin/brew outdated)";
test "${outdated}" != "" && echo "==> Outdated Formulae" && echo "${outdated}" && /usr/local/bin/terminal-notifier -title "Homebrew Update" -message "Packages require update: ${outdated}";
