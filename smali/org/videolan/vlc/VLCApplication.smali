.class public Lorg/videolan/vlc/VLCApplication;
.super Lcom/baidu/frontia/FrontiaApplication;
.source "VLCApplication.java"


# static fields
.field public static final CALL_ENDED_INTENT:Ljava/lang/String; = "org.videolan.vlc.CallEndedIntent"

.field public static final INCOMING_CALL_INTENT:Ljava/lang/String; = "org.videolan.vlc.IncomingCallIntent"

.field public static final SLEEP_INTENT:Ljava/lang/String; = "org.videolan.vlc.SleepIntent"

.field public static final TAG:Ljava/lang/String; = "VLC/VLCApplication"

.field private static instance:Lorg/videolan/vlc/VLCApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/frontia/FrontiaApplication;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    return-object v0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    invoke-virtual {v0}, Lorg/videolan/vlc/VLCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 55
    invoke-super {p0}, Lcom/baidu/frontia/FrontiaApplication;->onCreate()V

    .line 58
    const-string v4, "d3ngp3uj13qrg5qckafqyiewbhg9apov2tuql14peqgcy37s"

    .line 59
    const-string v5, "bqmmhny99f2e9ztuo1n44qqfffd9zqjrni1b4qiggauc4g3p"

    .line 58
    invoke-static {p0, v4, v5}, Lcom/avos/avoscloud/AVOSCloud;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lorg/videolan/vlc/VLCApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/avos/avoscloud/AVAnalytics;->enableCrashReport(Landroid/content/Context;Z)V

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 77
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "set_locale"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    const-string v4, "zh-TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 99
    .local v1, "locale":Ljava/util/Locale;
    :goto_0
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 100
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 101
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 102
    invoke-virtual {p0}, Lorg/videolan/vlc/VLCApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    invoke-virtual {p0}, Lorg/videolan/vlc/VLCApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 102
    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 106
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    sput-object p0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    .line 109
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    .line 111
    invoke-static {p0}, Lorg/videolan/vlc/gui/audio/AudioUtil;->prepareCacheFolder(Landroid/content/Context;)V

    .line 112
    return-void

    .line 83
    :cond_1
    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 85
    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .end local v1    # "locale":Ljava/util/Locale;
    :cond_2
    const-string v4, "pt-BR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    new-instance v1, Ljava/util/Locale;

    const-string v4, "pt"

    const-string v5, "BR"

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .end local v1    # "locale":Ljava/util/Locale;
    :cond_3
    const-string v4, "bn-IN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "bn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    :cond_4
    new-instance v1, Ljava/util/Locale;

    const-string v4, "bn"

    const-string v5, "IN"

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 95
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_5
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 96
    const/4 v4, 0x0

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    :cond_6
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/baidu/frontia/FrontiaApplication;->onLowMemory()V

    .line 120
    const-string v0, "VLC/VLCApplication"

    const-string v1, "System is running low on memory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lorg/videolan/vlc/util/BitmapCache;->getInstance()Lorg/videolan/vlc/util/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/util/BitmapCache;->clear()V

    .line 123
    return-void
.end method
