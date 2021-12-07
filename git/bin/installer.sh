echo "###   setup git   ###"

# install git
if [ -z $(which git) ]; then
  brew install git
fi

# create .config dir
if [ ! -d ~/.config ]; then
  echo "create ~/.config directory"
  mkdir ~/.config
fi

# link git settings
LINK_FILES=(.config/git)
for file in ${LINK_FILES[@]}
do
  unlink ~/$file&>/dev/null
  ln -sf $(pwd)/git/$file ~/$file
done

# install other CLI
CLI_LIST=(gh lazygit)
for cli in ${CLI_LIST[@]}
do
  if [ -z $(which $cli) ]
  then
    brew install $cli
  fi
done
