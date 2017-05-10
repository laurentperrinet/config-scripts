#!/bin/sh
brew update; for app in $(brew cask list); do cver="$(brew cask info "${app}" | head -n 1 | cut -d " " -f 2)"; ivers=$(ls -1 "/opt/homebrew-cask/Caskroom/${app}/.metadata/" | tr '\n' ' ' | sed -e 's/ $//'); aivers=(${ivers}); nvers=$(echo ${#aivers[@]}); echo "[] Found ${app} in cask list. Latest available version is ${cver}. You have installed version(s): ${ivers}"; if [[ ${nvers} -eq 1 ]]; then echo "${ivers}" | grep -q "^${cver}$" && { echo "[] Latest version already installed :) Skipping changes ..."; continue; }; fi; echo "[+] Fixing from ${ivers} to ${cver} ..."; brew cask uninstall "${app}" --force; brew cask install "${app}"; done