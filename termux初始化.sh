# termux-setup-storage

# sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list

# pkg install git

pkg update

pkg upgrade

pkg install vim python nodejs yarn -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/KUVBBH/config.git

cp config/.vimrc ./

cp config/termux.properties .termux/termux.properties

termux-reload-settings

pkg install python-numpy python-pillow opencv-python -y

#pip install smdv