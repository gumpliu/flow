printf '\033[0;34m%s\033[0m\n' "Upgrading flow"
cd "$GITFLOW_DIR"

require_clean_working_tree
if git pull --rebase --stat origin master
then
  printf '\033[0;34m%s\033[0m\n' 'Hooray! flow has been updated and/or is at the current version.'
else
  printf '\033[0;31m%s\033[0m\n' 'There was an error updating. Try again later?'
fi
