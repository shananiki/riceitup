This is still under development/configuration. If I change something I will add it here!

# riceitup
Hello, this is my personal configuration to rice up my Debian 11 experience.

---



**Install [Awesome Font 6](https://use.fontawesome.com/releases/v6.2.1/fontawesome-free-6.2.1-desktop.zip)**
```bash
wget https://use.fontawesome.com/releases/v6.2.1/fontawesome-free-6.2.1-desktop.zip
unzip fontawesome-free-6.2.1-desktop.zip
cd unzip fontawesome-free-6.2.1-desktop
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

**Running by bar**

If the -c or --config command line argument is specified, it will use the path given there.
```bash
polybar top -c /PATH/TO/FILE
```

