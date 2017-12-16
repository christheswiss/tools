#!/bin/bash

updated=false;
/usr/local/bin/brew update && updated=true;
test ${updated} != true && echo "Update failed!" && /usr/local/bin/terminal-notifier -title "Homebrew" -message "Update failed!";
outdated="$(/usr/local/bin/brew outdated)";
test ${updated} == true && test "${outdated}" != "" && echo "==> Outdated Formulae" && echo "${outdated}" && /usr/local/bin/terminal-notifier -title "Homebrew" -message $'Packages require update:\n'"${outdated}";
test ${updated} == true && test "${outdated}" == "" && /usr/local/bin/terminal-notifier -title "Homebrew" -message "No update required";
