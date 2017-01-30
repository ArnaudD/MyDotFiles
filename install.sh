ls -a MyDotFiles | grep -vP "install|config|\.gitignore|\.gitmodules|\.git|\.\.|\.$" | xargs -I '{}' ln -nfsv  `pwd`'/MyDotFiles/{}' {}
ls -a MyDotFiles/config | grep -vP "\.\.|\.$" | xargs -I '{}' ln -nfsv  `pwd`'/MyDotFiles/config/{}' .config/{}
