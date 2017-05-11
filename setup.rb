puts "Setup .vimrc"
%x{ ln -s -i $PWD/.vimrc ~/.vimrc }

puts "Creating color directory"
%x{ mkdir --parents ~/.vim }
%x{ mkdir --parents ~/.vim/colors }

puts "Setup gruvbox theme"
%{ ln -s -i $PWD/.vim/colors/gruvbox.vim ~/.vim/colors/gruvbox.vim }
