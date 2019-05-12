function soob () {
  local MAG="\e[35m"
  local RED="\e[91m"
  local BOLD="\e[1m"
  local UNBOLD="\e[21m"
  local RESET="\e[0m"
  local count=($(tmux -S /tmp/muxcon list-client))
  if [ ${#count[@]} -gt 0 ] ; then
     printf "\n"
     printf "\t\t${BOLD}${RED}    *** WARMING *** ${RESET}\n"
     printf "\n"
     printf "\t ${MAG} Session is progress ... joining read-only now ${RESET}"
     printf "${UNBOLD}\n"
     sleep 5
     tmux -S /tmp/muxcon attach -t soob -r
  else
     tmux -S /tmp/muxcon send -t soob "clear; cat /tmp/com-menu.txt" ENTER ; tmux -S /tmp/muxcon attach -t soob
  fi

function menu () {
     cat /tmp/com-menu.txt
}

export -f soob 
export -f menu
