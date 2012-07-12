home = File.expand_path('~')

Dir['*', '.*'].each do |file|
  next if file =~ /install/ || file =~ /README/ || file == '.git' || file == '..' || file == '.'
  target = File.join(home, file)
  puts "ln -fsv #{File.expand_path file} #{target}"
  `ln -nfsv #{File.expand_path file} #{target}`
end

`git submodule sync`
`git submodule update --init --recursive`

`vim +BundleInstall +qall`
