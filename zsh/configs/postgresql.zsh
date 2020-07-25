if [ -d "/usr/pgsql-9.6/bin" ]; then
  export PATH=/usr/pgsql-9.6/bin:$PATH
fi

alias stop-postgresql="pg_ctl -D /usr/local/var/postgres/ -m fast stop"
alias start-postgresql="pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start"
alias pg_restore='pg_restore -cOd'
alias pg_dump='pg_dump -Fc --no-acl --no-owner'
