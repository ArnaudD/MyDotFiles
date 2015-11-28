ls -a MyDotFiles | grep -vP "install|\.git|\.\.|\.$" | xargs -I '{}' ln -nfsv  `pwd`'/MyDotFiles/{}' {}
