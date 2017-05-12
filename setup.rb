def install_plugin https_url
  name = https_url.split('/').last
  location = "#{ENV['HOME']}/.vim/bundle/#{name}"
  if Dir.exists? location
    puts "#{name} is already installed"
  else
    puts "Installing #{name}"
    %x{ git clone -q #{https_url} #{location} }
  end
end

def install_powerline_fonts
  if File.exists? "fonts_installed"
    puts "Skipping font installation"
  else
    puts "Installing fonts"
    %x(git clone https://github.com/powerline/fonts.git &&
       cd fonts &&
       ./install.sh &&
       cd .. &&
       rm -rf fonts &&
       touch fonts_installed)
  end
end

puts "Setup .vimrc"
%x{ ln -s -i $PWD/.vimrc ~/.vimrc }

puts "Installing vim-pathogen"
%x{ mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim }

install_plugin "https://github.com/vim-airline/vim-airline"
install_plugin "https://github.com/morhetz/gruvbox"
install_plugin "https://github.com/tpope/vim-sensible"
install_plugin "https://github.com/vim-airline/vim-airline-themes"

install_powerline_fonts
