#!/bin/bash

SHELL_CONFIG=bashrc
CURRENT_SHELL=$(runuser -l $SUDO_USER -c 'echo $SHELL')

if [ "$CURRENT_SHELL" == "/bin/zsh" ]; then
    SHELL_CONFIG=zshrc
fi

echo "Using shell $SHELL_CONFIG"

mkdir /opt/groupthreads-cli/
chown -R $SUDO_USER:$SUDO_USER /opt/groupthreads-cli/
runuser -l $SUDO_USER -c 'git clone https://github.com/groupthreads/cli.git /opt/groupthreads-cli/'
chown -R root:root /opt/groupthreads-cli/
chmod +x /opt/groupthreads-cli/groupthreads.py
runuser -l $SUDO_USER -c 'echo "alias gt=\"python /opt/groupthreads-cli/groupthreads.py\"" | tee -a ~/.'"$SHELL_CONFIG"
