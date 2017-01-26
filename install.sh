#!/bin/bash

cd /opt
git clone https://github.com/groupthreads/cli.git
chmod +x /opt/cli/groupthreads.py
echo "alias groupthreads=\"python /opt/groupthreads.py\""
