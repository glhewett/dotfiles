if [ "${SSH_AUTH_SOCK}" == "" ]; then
  eval $(ssh-agent)
  echo "ssh agent running: ${SSH_AUTH_SOCK}"
else
  echo "ssh agent running: ${SSH_AUTH_SOCK}"
fi
