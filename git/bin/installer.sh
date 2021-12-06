# install git
if [ -z $(which git) ]; then
  brew install git
fi

# link git settings
for file in "$(pwd)/git/.config/git"/*
do
  echo $file
  ln -sf $file ~/.config/git
done
