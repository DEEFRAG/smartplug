.class public Lorg/videolan/vlc/util/AndroidDevices;
.super Ljava/lang/Object;
.source "AndroidDevices.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/AndroidDevices"

.field static final hasNavBar:Z

.field static final hasTsp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v0, "devicesWithoutNavBar":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "HTC One V"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "HTC One S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "HTC One X"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "HTC One XL"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanMR1OrLater()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    sput-boolean v1, Lorg/videolan/vlc/util/AndroidDevices;->hasNavBar:Z

    .line 58
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/videolan/vlc/util/AndroidDevices;->hasTsp:Z

    .line 59
    return-void

    .line 57
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;I)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    .line 164
    .local v1, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v0

    .line 166
    .local v0, "flat":F
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 170
    .local v2, "value":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 174
    .end local v0    # "flat":F
    .end local v2    # "value":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMediaDirectories()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->getStorageDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-static {}, Lorg/videolan/vlc/util/CustomDirectories;->getCustomDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getStorageDirectories()[Ljava/lang/String;
    .locals 18

    .prologue
    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "dirs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, "bufReader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "vfat"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "exfat"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "sdcardfs"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "fuse"

    aput-object v17, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 97
    .local v14, "typeWL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "tmpfs"

    aput-object v17, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 98
    .local v13, "typeBL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x2

    new-array v9, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "/mnt"

    aput-object v16, v9, v15

    const/4 v15, 0x1

    const-string v16, "/Removable"

    aput-object v16, v9, v15

    .line 99
    .local v9, "mountWL":[Ljava/lang/String;
    const/4 v15, 0x7

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 100
    const-string v16, "/mnt/secure"

    aput-object v16, v8, v15

    const/4 v15, 0x1

    .line 101
    const-string v16, "/mnt/shell"

    aput-object v16, v8, v15

    const/4 v15, 0x2

    .line 102
    const-string v16, "/mnt/asec"

    aput-object v16, v8, v15

    const/4 v15, 0x3

    .line 103
    const-string v16, "/mnt/obb"

    aput-object v16, v8, v15

    const/4 v15, 0x4

    .line 104
    const-string v16, "/mnt/media_rw/extSdCard"

    aput-object v16, v8, v15

    const/4 v15, 0x5

    .line 105
    const-string v16, "/mnt/media_rw/sdcard"

    aput-object v16, v8, v15

    const/4 v15, 0x6

    .line 106
    const-string v16, "/storage/emulated"

    aput-object v16, v8, v15

    .line 107
    .local v8, "mountBL":[Ljava/lang/String;
    const/4 v15, 0x3

    new-array v3, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 108
    const-string v16, "/dev/block/vold"

    aput-object v16, v3, v15

    const/4 v15, 0x1

    .line 109
    const-string v16, "/dev/fuse"

    aput-object v16, v3, v15

    const/4 v15, 0x2

    .line 110
    const-string v16, "/mnt/media_rw/extSdCard"

    aput-object v16, v3, v15

    .line 113
    .local v3, "deviceWL":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/proc/mounts"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v4, v15, [Ljava/lang/String;

    .line 132
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v15

    if-lt v5, v15, :cond_4

    .line 139
    if-eqz v1, :cond_6

    .line 141
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 146
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v5    # "i":I
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    return-object v4

    .line 117
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v15, " "

    invoke-direct {v11, v6, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v11, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "device":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "mountpoint":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v8, v10}, Lorg/videolan/vlc/util/Strings;->StartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 127
    invoke-static {v3, v2}, Lorg/videolan/vlc/util/Strings;->StartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/Strings;->StartsWith([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 128
    :cond_3
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 136
    .end local v2    # "device":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v10    # "mountpoint":Ljava/lang/String;
    .end local v11    # "tokens":Ljava/util/StringTokenizer;
    .end local v12    # "type":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v0, v1

    .line 139
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_1

    .line 141
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v15

    goto :goto_2

    .line 133
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v5    # "i":I
    .restart local v6    # "line":Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v4, v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .end local v5    # "i":I
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v15

    .line 139
    :goto_4
    if-eqz v0, :cond_1

    .line 141
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 143
    :catch_3
    move-exception v15

    goto :goto_2

    .line 138
    :catchall_0
    move-exception v15

    .line 139
    :goto_5
    if-eqz v0, :cond_5

    .line 141
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 145
    :cond_5
    :goto_6
    throw v15

    .line 143
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v5    # "i":I
    .restart local v6    # "line":Ljava/lang/String;
    :catch_4
    move-exception v15

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "line":Ljava/lang/String;
    :catch_5
    move-exception v16

    goto :goto_6

    .line 138
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 137
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v15

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 136
    :catch_7
    move-exception v15

    goto :goto_3

    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v5    # "i":I
    .restart local v6    # "line":Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static hasCombBar()Z
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    .line 72
    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasExternalStorage()Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasNavBar()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lorg/videolan/vlc/util/AndroidDevices;->hasNavBar:Z

    return v0
.end method

.method public static hasTsp()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lorg/videolan/vlc/util/AndroidDevices;->hasTsp:Z

    return v0
.end method

.method public static isPhone()Z
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 79
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
