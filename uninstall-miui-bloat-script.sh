#!/bin/bash

adb devices
read -p "If using ADB for first time, grant permission on your phone and press Ok."

uninstall=(
com.cmcm.indianews_for_oem
com.dsi.ant.server
com.newsdog
com.swiftkey.languageprovider
com.swiftkey.swiftkeyconfigurator
com.touchtype.swiftkey
com.xiaomi.glgm
com.xiaomi.joyose
com.xiaomi.mipicks
com.xiaomi.payment
com.miui.analytics
com.miui.android.fashiongallery
com.miui.bugreport
com.miui.hybrid
com.miui.msa.global
com.miui.player
com.miui.userguide
com.miui.videoplayer
com.miui.weather2
com.miui.yellowpage
com.mi.android.globalpersonalassistant
com.mi.dlabs.vr
com.mi.global.bbs
com.mi.global.shop
com.mipay.wallet.in
com.google.android.feedback
com.google.android.gm
com.google.android.music
com.google.android.videos
com.android.browser
com.android.chrome
com.android.thememanager
com.android.wallpaper.livepicker
com.facebook.appmanager
com.facebook.services
com.facebook.system
com.micredit.in
com.mipay.wallet.id
com.miui.miservice
com.xiaomi.mirecycle
com.mi.android.globalminusscreen
com.google.android.apps.tachyon
)

for X in ${uninstall[@]}
do
    echo $X
    adb shell pm uninstall $X
    adb shell pm uninstall --user 0 $X
done

pause
