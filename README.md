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



**Install [polybar](https://github.com/polybar/polybar) (Debian 11)**
```bash
sudo apt install polybar
```


**If the -c or --config command line argument is specified, it will use the path given there**
```bash
polybar top -c /PATH/TO/FILE
```
