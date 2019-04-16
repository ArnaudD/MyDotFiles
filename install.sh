CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ls -a $CURRENT_DIR | grep -vP "atom|install|config|\.gitignore|\.gitmodules|\.git|.ssh|\.\.|\.$" | xargs -I '{}' ln -nfsv  $CURRENT_DIR'/{}' ~/{}
ls -a $CURRENT_DIR/config | grep -vP "\.\.|\.$" | xargs -I '{}' ln -nfsv  $CURRENT_DIR'/config/{}' ~/.config/{}
ls -a $CURRENT_DIR/.ssh | grep -vP "\.\.|\.$" | xargs -I '{}' ln -nfsv  $CURRENT_DIR'/.ssh/{}' ~/.ssh/{}
ls -a $CURRENT_DIR/.atom | grep -vP "\.\.|\.$" | xargs -I '{}' ln -nfsv  $CURRENT_DIR'/.atom/{}' ~/.atom/{}
ln -nfsv  $CURRENT_DIR/.gitconfig ~/.gitconfig
