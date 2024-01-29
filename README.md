# WINE-on-ChromeOS

This shell-script can be used to install WINE in the Chrome OS Linux environment. It was inspired by the how-tos I found [here](https://beebom.com/how-use-windows-10-apps-chromebook-using-wine/) and [here](https://www.linuxmadesimple.info/2020/07/how-to-install-wine-501-on-chromebook.html). With Chrome OS 97 and newer moving from Debian 10 "Buster" to 11 "Bullseye", I updated the script to use OpenPGP repository signing keys instead of the depracted apt-key command, as outlined [here](https://www.linuxuprising.com/2021/01/apt-key-is-deprecated-how-to-add.html).

Now the script automatically executes all necessary steps to setup WINE and launch it's configuration tool. Just install the Linux environment on your Chromebook, preferably choosing more than the default partition size of 10.0 GB. Then update Linux...

```
sudo apt-get update
sudo apt-get dist-upgrade
```

...and install WINE by issuing the following command:

```
bash <(curl -sL https://raw.githubusercontent.com/jcarroll/WINE-on-ChromeOS/main/wine-on-chromeos.sh)
```

Be sure to carefully monitor the free disk space of the Linux system and be ready to expand the partition, depending on which Windows applications you're going to install. Further consider that WINE will deploy not-working shortcuts in Chrome OS' launcher and you will have to manually repair them, as outlined [here](https://beebom.com/how-use-windows-10-apps-chromebook-using-wine/). You will find the shortcuts in /home/*\<username\>*/.local/share/applications/wine/Programs/:

![WINE](media/wine.png)

I have successfully tested this using Google Chrome OS up to version 112.0, the Linux environment running Debian 11 "Bullseye" and WINE 8.0. The previous version of the script worked on earlier Chrome OS versions with Debian 10 "Buster" and previous versions of WINE, too. It's just a tiny little script to speed up things a bit, which comes "as-it-is" without any warranties or support. Please feel free to adapt it to suit your needs.
