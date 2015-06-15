# smartplug
English translated version of the Chinese android app com.kankunit.smartplugcronus_21.apk Version 2.0.5.0

This is far from perfect/stable/working.
It is still in the process of making it work/better

The final apk file must be singed with ZipSigner (free Android app, download it from the play store)
in order to work.

The app crashes every time you will try to open the device for controling it (didn't figure out why at the moment).

please feel free to download the hole repository or fork it and make it better, you can commit your changes to this repository or just update your own repository, but it would be nice to know the place here a more stable, better version is available to others, so please share it with me and others. thank you.

I'm no native english speaker nor can a read chinese, so it is likely to be the worst idea to let me translate it for you, but i wanted a better/more complete english version of the app.

This work will likely to be obsolete by the end of july, because the official developer is already working on a proper english version of the app, but in the meantime feel free to experiment with what i provid you :)

I decompiled the com.kankunit.smartplugcronus_21.apk Version 2.0.5.0 using apktool 2.0
then i experimented with several tools, like textmate, notepad++, beyond compare, winrar and photoshop to get it translated to english, i used a combination of google translator, bing translator and freetranslation.com to get the most plausible translation i can get (but it is not good after all, you will see).

I tried apkstudio and android multitool but i could not get them to work properly.

The overall development structure of the app was a total mess.
You know, there is a so called strings.xml file wich should contain like ALL strings used in the whole app but unfortanatly there was just like 5% or so of all the strings used in the app in there, the rest where in some layout files (maybe 15%) included in pictures (20%) and most of them where hardcoded in the original source code (60% or so)

There are only smali files, no java files.

You can build it back to an apk file by using the command: apktool b smartplug
If you have apktool properly installed on your computer and have the folder with these files called smartplug of course.
apktool does not provide you with actually working apk files so you have to find a way to build installable apk files, i used the app ZipSigner for that. it rebuilds the apk and signs it so it will be installable on your device.


