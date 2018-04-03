## For Linux users:
1) Install spin using instructions [here](https://digitalpadm.com/how-to-install-spin-model-checker-on-linux-ubuntu-16-04)
2) Download [jspin](http://spinroot.com/spin/Src/index.html) and unzip it.
3) Get *Graphviz* (dot) by typing on console: ```sudo apt install dot```
4) Unzip jspin and then edit ```config.cfg```
5) Replace attribute of executables needed.
* Original
```SPIN=bin\\spin.exe```
* Replace with:
```SPIN=/usr/bin/spin```

* Original
```SPIN=bin\\dot.exe```
* Replace with:
```SPIN=/usr/bin/dot```
6) Save changes on  ```config.cfg```.
7) Open **JSpin** and enjoy your model checking!
## Notes: 
* You can find out where is located spin/dot with ```which``` command 
* You can find files and further info [here](http://spinroot.com/spin/Man/README.html#S1a)
