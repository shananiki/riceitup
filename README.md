This is still under development/configuration. If I change something I will add it here!

# riceitup
Hello, this is my personal configuration to rice up my Debian 11 experience.
---
![rice](https://raw.githubusercontent.com/shananiki/riceitup/main/screen2.png)


**Install [Awesome Font 6](https://use.fontawesome.com/releases/v6.2.1/fontawesome-free-6.2.1-desktop.zip)**
```bash
wget https://use.fontawesome.com/releases/v6.2.1/fontawesome-free-6.2.1-desktop.zip
unzip fontawesome-free-6.2.1-desktop.zip
cd fontawesome-free-6.2.1-desktop
sudo mv otfs/* /usr/share/fonts/opentype/
sudo fc-cache -f -v
```

**Install [Awesome Font 5](https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip)**
```bash
wget https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip
unzip fontawesome-free-5.15.4-desktop.zip
cd fontawesome-free-5.15.4-desktop
sudo mv otfs/* /usr/share/fonts/opentype/
sudo fc-cache -f -v
```


**Install [Numix Theme](https://github.com/numixproject/numix-gtk-theme) (Debian 11)**
```bash
sudo apt install numix-gtk-theme
sudo apt install numix-icon-theme
```


**Install [polybar](https://github.com/polybar/polybar) (Debian 11)**
```bash
sudo apt install polybar
```

**Install [rofi](https://github.com/davatorium/rofi/blob/next/INSTALL.md) (Debian 11 or Ubuntu)**
```bash
sudo apt install rofi
```

**Install rofi power menu**
```bash
sudo cp rofi-power-menu /home/$USER/.local/bin
```
```bash
sudo chmod u+x /home/$USER/.local/bin/rofi-power-menu && sudo chown $USER /home/$USER/.local/bin/rofi-power-menu
```

**Install Dolphin (Debian 11 or Ubuntu)**
```bash
sudo apt install dolphin
```

**Running my bar**

If the -c or --config command line argument is specified, it will use the path given there.
```bash
polybar top -c /home/$USER/.config/polybar/config.ini
```

----------

**Installing some better rofi themes [Thanks vahnrr](https://gitlab.com/vahnrr/rofi-menus/-/tree/rofi-1.5.4/)**

```bash
git clone https://gitlab.com/vahnrr/rofi-menus ~/.config/rofi
chmod +x ~/.config/rofi/scripts/*
~/.config/rofi/scripts/rofi-utils set-colorscheme dark-steel-blue
```

Add ~/.local/bin to PATH
```bash
PATH=$PATH:~/.local/bin
```

Create symbolic link to rofi scripts
```bash
ln -s ~/.config/rofi/scripts/* ~/.local/bin/
```

**Or put the spotlight-dark.rasi in /home/$USER/.local/share/rofi/themes/**
And set it as default using
```bash
rofi-theme-selector
```

Install maim and xclip for screenshots
```bash
sudo apt install xclip
```
```bash
sudo apt install maim
```

Build i3 gaps
```bash
apt install meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
```
```bash
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
```
