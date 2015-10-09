#!/bin/bash

/usr/local/bin/brew update;
outdated="$(/usr/local/bin/brew outdated)";
test "${outdated}" != "" && echo "==> Outdated Formulae" && echo "${outdated}" && /usr/local/bin/terminal-notifier -title "Homebrew" -message "Packages require update: ${outdated}";
test "${outdated}" == "" && /usr/local/bin/terminal-notifier -title "Homebrew" -message "No update required";