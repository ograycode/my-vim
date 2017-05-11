def install_plugin https_url
  name = https_url.split('/').last
  puts "Installing #{name}"
  %x{ if ! cd ~/.vim/bundle/#{name}; then git clone -q #{https_url} ~/.vim/bundle/#{name}; fi }
end

puts "Setup .vimrc"
%x{ ln -s -i $PWD/.vimrc ~/.vimrc }

puts "Installing vim-pathogen"
%x{ mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim }

install_plugin "https://github.com/vim-airline/vim-airline"
install_plugin "https://github.com/morhetz/gruvbox"
