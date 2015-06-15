.class public Lorg/videolan/vlc/RemoteControlClientReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlClientReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VLC/RemoteControlClientReceiver"

.field private static mHeadsetDownTime:J

.field private static mHeadsetUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    sput-wide v0, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetDownTime:J

    .line 42
    sput-wide v0, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetUpTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    .local v4, "mLibVLC":Lorg/videolan/libvlc/LibVLC;
    if-nez v4, :cond_1

    .line 131
    .end local v4    # "mLibVLC":Lorg/videolan/libvlc/LibVLC;
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/videolan/libvlc/LibVlcException;
    goto :goto_0

    .line 56
    .end local v1    # "e":Lorg/videolan/libvlc/LibVlcException;
    .restart local v4    # "mLibVLC":Lorg/videolan/libvlc/LibVLC;
    :cond_1
    const-string v7, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 58
    const-string v7, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 59
    .local v2, "event":Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x4f

    if-eq v7, v8, :cond_2

    .line 63
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x55

    if-eq v7, v8, :cond_2

    .line 64
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 67
    :cond_2
    const/4 v3, 0x0

    .line 68
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 122
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/videolan/vlc/RemoteControlClientReceiver;->isOrderedBroadcast()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    invoke-virtual {p0}, Lorg/videolan/vlc/RemoteControlClientReceiver;->abortBroadcast()V

    .line 124
    :cond_4
    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 78
    .local v5, "time":J
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-gtz v7, :cond_3

    .line 83
    sput-wide v5, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetDownTime:J

    goto :goto_1

    .line 87
    :pswitch_1
    sget-wide v7, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetDownTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 88
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Backward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v3    # "i":Landroid/content/Intent;
    const-wide/16 v5, 0x0

    .line 101
    :goto_2
    sput-wide v5, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetUpTime:J

    goto :goto_1

    .line 91
    :cond_5
    sget-wide v7, Lorg/videolan/vlc/RemoteControlClientReceiver;->mHeadsetUpTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-gtz v7, :cond_6

    .line 92
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Forward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 97
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Pause"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 99
    :cond_7
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Play"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 106
    .end local v5    # "time":J
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Play"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 109
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Pause"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 112
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Stop"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v3    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 115
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Forward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v3    # "i":Landroid/content/Intent;
    goto/16 :goto_1

    .line 118
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.Backward"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "i":Landroid/content/Intent;
    goto/16 :goto_1

    .line 126
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_8
    const-string v7, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-class v7, Lorg/videolan/vlc/audio/AudioService;

    invoke-direct {p2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .restart local p2    # "intent":Landroid/content/Intent;
    const-string v7, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_3
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
