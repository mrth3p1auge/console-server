# serial-console server for linux
This allows you to use an existing jumphost or bastion as a console server as
well with shared access using TMUX as the backend. If a access it tried while 
an existing session is in progress, the second user is joined to the session 
readonly.

## Prequists
* minicom
* tmux

``` Bash
sudo apt install minicom tmux
```
