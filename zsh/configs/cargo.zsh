export CARGO_INSTALL_ROOT=$HOME/local

which exa > /dev/null

if [ $? -eq 0 ]; then
  alias ls='exa'
else
  alias ls='ls --color=auto'
  echo "exa not found, using ls"
fi
