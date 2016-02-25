ls -a MyDotFiles | grep -vP "install|\.git$|\.gitignore|\.gitmodules|\.\.|\.$" | xargs -I '{}' ln -nfsv  `pwd`'/MyDotFiles/{}' {}
