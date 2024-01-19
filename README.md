# *Termux*初始化配置

<img src="https://github.com/KUVBBH/config/blob/main/.PNG/%E8%AE%BE%E7%BD%AE.jpg" height="100">

#### 读写权限授权

```sh
termux-setup-storage
```

#### 更换软件源

```sh
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
```

#### 升级

```sh
pkg update && pkg upgrade
```

#### 安装软件

```sh
pkg install git vim python nodejs yarn -y
```

#### 下载VIM插件管理器Plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### git配置文件

```sh
git clone https://github.com/KUVBBH/config.git
```

#### VIM配置文件

```
cp -r config/.vim ./
```

#### Termux键盘自定义配置文件

```sh
cp -r config/.termux ./
```

#### 安装一些Python包

```sh
pkg install python-numpy python-pillow opencv-python -y
```


