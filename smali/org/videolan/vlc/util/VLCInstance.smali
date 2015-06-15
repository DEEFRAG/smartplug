.class public Lorg/videolan/vlc/util/VLCInstance;
.super Ljava/lang/Object;
.source "VLCInstance.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/VLCInstance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    .line 40
    .local v1, "instance":Lorg/videolan/libvlc/LibVLC;
    if-nez v1, :cond_0

    .line 41
    new-instance v3, Lorg/videolan/vlc/VLCCrashHandler;

    invoke-direct {v3}, Lorg/videolan/vlc/VLCCrashHandler;-><init>()V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    .line 44
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 46
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-static {v2}, Lorg/videolan/vlc/util/VLCInstance;->updateLibVlcSettings(Landroid/content/SharedPreferences;)V

    .line 47
    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/LibVLC;->init(Landroid/content/Context;)V

    .line 48
    new-instance v3, Lorg/videolan/vlc/util/VLCInstance$1;

    invoke-direct {v3, v0}, Lorg/videolan/vlc/util/VLCInstance$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lorg/videolan/libvlc/LibVLC;->setOnNativeCrashListener(Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;)V

    .line 58
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public static updateLibVlcSettings(Landroid/content/SharedPreferences;)V
    .locals 11
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v10, 0x0

    .line 62
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    .line 63
    .local v4, "instance":Lorg/videolan/libvlc/LibVLC;
    if-nez v4, :cond_0

    .line 121
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v8, "subtitle_text_encoding"

    const-string v9, ""

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/videolan/libvlc/LibVLC;->setSubtitlesEncoding(Ljava/lang/String;)V

    .line 67
    const-string v8, "enable_time_stretching_audio"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lorg/videolan/libvlc/LibVLC;->setTimeStretching(Z)V

    .line 68
    const-string v8, "enable_frame_skip"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lorg/videolan/libvlc/LibVLC;->setFrameSkip(Z)V

    .line 69
    const-string v8, "chroma_format"

    const-string v9, ""

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/videolan/libvlc/LibVLC;->setChroma(Ljava/lang/String;)V

    .line 70
    const-string v8, "enable_verbose_mode"

    const/4 v9, 0x1

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lorg/videolan/libvlc/LibVLC;->setVerboseMode(Z)V

    .line 72
    const-string v8, "equalizer_enabled"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    const-string v8, "equalizer_values"

    invoke-static {p0, v8}, Lorg/videolan/vlc/util/Preferences;->getFloatArray(Landroid/content/SharedPreferences;Ljava/lang/String;)[F

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/videolan/libvlc/LibVLC;->setEqualizer([F)V

    .line 77
    :cond_1
    :try_start_0
    const-string v8, "aout"

    const-string v9, "-1"

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    .local v0, "aout":I
    :goto_1
    :try_start_1
    const-string v8, "vout"

    const-string v9, "-1"

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 91
    .local v7, "vout":I
    :goto_2
    :try_start_2
    const-string v8, "deblocking"

    const-string v9, "-1"

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 98
    .local v1, "deblocking":I
    :goto_3
    :try_start_3
    const-string v8, "hardware_acceleration"

    const-string v9, "-1"

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 105
    .local v3, "hardwareAcceleration":I
    :goto_4
    :try_start_4
    const-string v8, "dev_hardware_decoder"

    const-string v9, "-1"

    invoke-interface {p0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    .line 110
    .local v2, "devHardwareDecoder":I
    :goto_5
    const-string v8, "network_caching_value"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 111
    .local v5, "networkCaching":I
    const v8, 0xea60

    if-le v5, v8, :cond_3

    .line 112
    const v5, 0xea60

    .line 115
    :cond_2
    :goto_6
    invoke-virtual {v4, v0}, Lorg/videolan/libvlc/LibVLC;->setAout(I)V

    .line 116
    invoke-virtual {v4, v7}, Lorg/videolan/libvlc/LibVLC;->setVout(I)V

    .line 117
    invoke-virtual {v4, v1}, Lorg/videolan/libvlc/LibVLC;->setDeblocking(I)V

    .line 118
    invoke-virtual {v4, v5}, Lorg/videolan/libvlc/LibVLC;->setNetworkCaching(I)V

    .line 119
    invoke-virtual {v4, v3}, Lorg/videolan/libvlc/LibVLC;->setHardwareAcceleration(I)V

    .line 120
    invoke-virtual {v4, v2}, Lorg/videolan/libvlc/LibVLC;->setDevHardwareDecoder(I)V

    goto/16 :goto_0

    .line 79
    .end local v0    # "aout":I
    .end local v1    # "deblocking":I
    .end local v2    # "devHardwareDecoder":I
    .end local v3    # "hardwareAcceleration":I
    .end local v5    # "networkCaching":I
    .end local v7    # "vout":I
    :catch_0
    move-exception v6

    .line 80
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .restart local v0    # "aout":I
    goto :goto_1

    .line 86
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 87
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    .restart local v7    # "vout":I
    goto :goto_2

    .line 93
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v6

    .line 94
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "deblocking":I
    goto :goto_3

    .line 100
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v6

    .line 101
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    .restart local v3    # "hardwareAcceleration":I
    goto :goto_4

    .line 107
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v6

    .line 108
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    .restart local v2    # "devHardwareDecoder":I
    goto :goto_5

    .line 113
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v5    # "networkCaching":I
    :cond_3
    if-gez v5, :cond_2

    .line 114
    const/4 v5, 0x0

    goto :goto_6
.end method
