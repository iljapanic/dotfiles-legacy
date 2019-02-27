## Install



### install packages from official distro repo

```bash
sudo apt update
```

```bash
sudo apt install arc-theme chromium-browser curl font-manager fonts-powerline gdebi-core git gparted neofetch numix-icon-theme redshift redshift-gtk rofi rxvt-unicode transmission transmission-gtk virtualbox virtualbox-ext-pack xdotool zsh
```



## configure zsh

firs run zsh

```shell
zsh
```

then install zsh prezto

```sh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

copy default zsh configuration:

```bash
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

find out where zsh binary is

```shell
which zsh
```

and set that zsh binary as default shell:

```bash
chsh -s '$ZSH_BINARY_LOCATION'
```



### install and configure Krypton

``curl https://krypt.co/kr | sh``

``kr pair``



## install powerline fonts

[instructions](https://github.com/powerline/fonts):

```shell
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```



### install i3-gaps

[follow instructions](https://github.com/Airblader/i3/wiki/Compiling-&-Installing)



### install Polybar

```bash
sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev
```



### install unofficial packages

```bash
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt update
```

```bash
sudo apt install papirus-icon-theme typora
```



## install VS Code

[download from official website](https://code.visualstudio.com/) and install via ``sudo gdebi $PATH_DO_VS_CODE.deb``



## install Noto Color Emoji

download