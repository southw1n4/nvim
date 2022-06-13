#! /bin/bash
#--------------------------------------------nvim----------------------------------------

echo "now process nvim.........."
GITHUB=https://github.com
DIST_DIR=~/.local/share/nvim/site/pack/packer/start
#git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cp .config/nvim/.tmux.conf .

for line in `cat .config/nvim/lua/plugins.lua | grep "'*/*'" | cut -d "'" -f 2`
do
        new_line=`echo ${line} | sed 's#/# #g' | cut -d ' ' -f 1-5`
        if [ ! `echo ${new_line} | wc -w ` -eq 2 ]
        then
                continue
        fi
        author=`echo ${new_line} | cut -d ' ' -f 1`
        tool=`echo ${new_line} | cut -d ' ' -f 2`
        if [ -e ${DIST_DIR}/${tool} ]
        then
                continue
        fi
        git clone --depth 1 ${GITHUB}/${author}/${tool} ${DIST_DIR}/${tool}
done



#--------------------------------------------vue----------------------------------------

echo "now process vue and django........"

hash -d npm
npm install vue@next



