#!/bin/bash

/usr/local/bin/brew update;
outdated="$(/usr/local/bin/brew outdated)";
test "${outdated}" != "" && echo "==> Outdated Formulae" && echo "${outdated}";
