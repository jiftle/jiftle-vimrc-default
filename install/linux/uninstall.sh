#!/bin/bash
# -----------------------------------------------------------------
# FileName: uninstall.sh
# Date: 2020-10-24
# Author: jiftle
# Description: 
# -----------------------------------------------------------------

echo '  |--> start remove .vimrc'
rm ~/.vimrc
echo 'remove .vimrc from user dir'
rm -rf ~/.vim/
echo '  |--> uninstall successfully'

