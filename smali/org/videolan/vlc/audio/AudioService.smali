.class public Lorg/videolan/vlc/audio/AudioService;
.super Landroid/app/Service;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/audio/AudioService$AudioServiceEventHandler;,
        Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;,
        Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_REMOTE_BACKWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Backward"

.field public static final ACTION_REMOTE_FORWARD:Ljava/lang/String; = "org.videolan.vlc.remote.Forward"

.field public static final ACTION_REMOTE_GENERIC:Ljava/lang/String; = "org.videolan.vlc.remote."

.field public static final ACTION_REMOTE_LAST_PLAYLIST:Ljava/lang/String; = "org.videolan.vlc.remote.LastPlaylist"

.field public static final ACTION_REMOTE_PAUSE:Ljava/lang/String; = "org.videolan.vlc.remote.Pause"

.field public static final ACTION_REMOTE_PLAY:Ljava/lang/String; = "org.videolan.vlc.remote.Play"

.field public static final ACTION_REMOTE_PLAYPAUSE:Ljava/lang/String; = "org.videolan.vlc.remote.PlayPause"

.field public static final ACTION_REMOTE_STOP:Ljava/lang/String; = "org.videolan.vlc.remote.Stop"

.field public static final ACTION_WIDGET_INIT:Ljava/lang/String; = "org.videolan.vlc.widget.INIT"

.field public static final ACTION_WIDGET_UPDATE:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE"

.field public static final ACTION_WIDGET_UPDATE_COVER:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE_COVER"

.field public static final ACTION_WIDGET_UPDATE_POSITION:Ljava/lang/String; = "org.videolan.vlc.widget.UPDATE_POSITION"

.field public static final CURRENT_ITEM:I = 0x1

.field public static final NEXT_ITEM:I = 0x3

.field public static final PREVIOUS_ITEM:I = 0x2

.field private static final SHOW_PROGRESS:I = 0x0

.field private static final SHOW_TOAST:I = 0x1

.field public static final START_FROM_NOTIFICATION:Ljava/lang/String; = "from_notification"

.field private static final TAG:Ljava/lang/String; = "VLC/AudioService"

.field public static final WIDGET_CLASS:Ljava/lang/String; = "org.videolan.vlc.widget.VLCAppWidgetProvider"

.field public static final WIDGET_PACKAGE:Ljava/lang/String; = "org.videolan.vlc"

.field private static mWasPlayingAudio:Z


# instance fields
.field private audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/videolan/vlc/interfaces/IAudioServiceCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mDetectHeadset:Z

.field private mEventHandler:Lorg/videolan/libvlc/EventHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

.field private mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private final mListEventHandler:Landroid/os/Handler;

.field private mNextIndex:I

.field private mPrevIndex:I

.field private mPrevious:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRandom:Ljava/util/Random;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

.field private mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

.field private mRepeating:Lorg/videolan/vlc/audio/RepeatType;

.field private mShuffling:Z

.field private final mVlcEventHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWidgetPositionTimestamp:J

.field private final serviceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lorg/videolan/vlc/audio/AudioService;->mWasPlayingAudio:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mDetectHeadset:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    .line 137
    sget-object v0, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;

    .line 138
    iput-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRandom:Ljava/util/Random;

    .line 144
    iput-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 145
    iput-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/videolan/vlc/audio/AudioService;->mWidgetPositionTimestamp:J

    .line 338
    new-instance v0, Lorg/videolan/vlc/audio/AudioService$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/audio/AudioService$1;-><init>(Lorg/videolan/vlc/audio/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    .line 434
    new-instance v0, Lorg/videolan/vlc/audio/AudioService$AudioServiceEventHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/audio/AudioService$AudioServiceEventHandler;-><init>(Lorg/videolan/vlc/audio/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;

    .line 534
    new-instance v0, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/audio/AudioService$MediaListEventHandler;-><init>(Lorg/videolan/vlc/audio/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mListEventHandler:Landroid/os/Handler;

    .line 673
    new-instance v0, Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/audio/AudioService$AudioServiceHandler;-><init>(Lorg/videolan/vlc/audio/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    .line 973
    new-instance v0, Lorg/videolan/vlc/audio/AudioService$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/audio/AudioService$2;-><init>(Lorg/videolan/vlc/audio/AudioService;)V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 124
    sput-boolean p0, Lorg/videolan/vlc/audio/AudioService;->mWasPlayingAudio:Z

    return-void
.end method

.method static synthetic access$10(Lorg/videolan/vlc/audio/AudioService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$11(Lorg/videolan/vlc/audio/AudioService;)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mDetectHeadset:Z

    return v0
.end method

.method static synthetic access$12(Lorg/videolan/vlc/audio/AudioService;)Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    return v0
.end method

.method static synthetic access$13(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/vlc/audio/RepeatType;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;

    return-object v0
.end method

.method static synthetic access$14(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/Media;
    .locals 1

    .prologue
    .line 660
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lorg/videolan/vlc/audio/AudioService;)I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    return v0
.end method

.method static synthetic access$16(Lorg/videolan/vlc/audio/AudioService;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    return v0
.end method

.method static synthetic access$17(Lorg/videolan/vlc/audio/AudioService;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 968
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCover()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$19(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->pause()V

    return-void
.end method

.method static synthetic access$20(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/EventHandler;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;

    return-object v0
.end method

.method static synthetic access$21(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$22(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mListEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$23(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$24(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->validateLocation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1518
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/audio/AudioService;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$26(Lorg/videolan/vlc/audio/AudioService;I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$27(Lorg/videolan/vlc/audio/AudioService;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$28(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->showNotification()V

    return-void
.end method

.method static synthetic access$29(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->updateRemoteControlClientMetadata()V

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lorg/videolan/vlc/audio/AudioService;->mWasPlayingAudio:Z

    return v0
.end method

.method static synthetic access$30(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 1478
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->saveMediaList()V

    return-void
.end method

.method static synthetic access$31(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->saveCurrentMedia()V

    return-void
.end method

.method static synthetic access$32(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V

    return-void
.end method

.method static synthetic access$33(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V

    return-void
.end method

.method static synthetic access$34(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V

    return-void
.end method

.method static synthetic access$35(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->shuffle()V

    return-void
.end method

.method static synthetic access$36(Lorg/videolan/vlc/audio/AudioService;I)V
    .locals 0

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->setRepeatType(I)V

    return-void
.end method

.method static synthetic access$37(Lorg/videolan/vlc/audio/AudioService;Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/videolan/vlc/audio/AudioService;->mDetectHeadset:Z

    return-void
.end method

.method static synthetic access$38(Lorg/videolan/vlc/audio/AudioService;Z)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->changeAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$39(Lorg/videolan/vlc/audio/AudioService;I)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->setRemoteControlClientPlaybackState(I)V

    return-void
.end method

.method static synthetic access$4(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->play()V

    return-void
.end method

.method static synthetic access$40(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$41(Lorg/videolan/vlc/audio/AudioService;Z)V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices(Z)V

    return-void
.end method

.method static synthetic access$42(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->handleVout()V

    return-void
.end method

.method static synthetic access$43(Lorg/videolan/vlc/audio/AudioService;Landroid/content/Context;F)V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/audio/AudioService;->updateWidgetPosition(Landroid/content/Context;F)V

    return-void
.end method

.method static synthetic access$5(Lorg/videolan/vlc/audio/AudioService;)Z
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 932
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->previous()V

    return-void
.end method

.method static synthetic access$7(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->stop()V

    return-void
.end method

.method static synthetic access$8(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->next()V

    return-void
.end method

.method static synthetic access$9(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 1409
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->loadLastPlaylist()V

    return-void
.end method

.method private changeAudioFocus(Z)V
    .locals 4
    .param p1, "gain"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isFroyoOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v1, :cond_1

    .line 302
    new-instance v1, Lorg/videolan/vlc/audio/AudioService$3;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/audio/AudioService$3;-><init>(Lorg/videolan/vlc/audio/AudioService;)V

    iput-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 330
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/audio/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 331
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_2

    .line 332
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method private determinePrevAndNextIndices()V
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices(Z)V

    .line 834
    return-void
.end method

.method private determinePrevAndNextIndices(Z)V
    .locals 4
    .param p1, "expand"    # Z

    .prologue
    const/4 v2, -0x1

    .line 837
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->expand()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    .line 838
    iput v2, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    .line 840
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    if-ne v1, v2, :cond_0

    .line 842
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v0

    .line 845
    .local v0, "size":I
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;

    sget-object v3, Lorg/videolan/vlc/audio/RepeatType;->Once:Lorg/videolan/vlc/audio/RepeatType;

    if-ne v1, v3, :cond_2

    .line 846
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    .line 886
    .end local v0    # "size":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 837
    goto :goto_0

    .line 849
    .restart local v0    # "size":I
    :cond_2
    iget-boolean v1, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    if-eqz v1, :cond_7

    .line 850
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 851
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    .line 854
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_5

    .line 855
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;

    sget-object v3, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    if-ne v1, v3, :cond_4

    .line 856
    iput v2, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    goto :goto_1

    .line 859
    :cond_4
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 862
    :cond_5
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRandom:Ljava/util/Random;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRandom:Ljava/util/Random;

    .line 866
    :cond_6
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    .line 868
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    iget v2, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    iget v2, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 872
    :cond_7
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    if-lez v1, :cond_8

    .line 873
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    .line 874
    :cond_8
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_9

    .line 875
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    goto :goto_1

    .line 877
    :cond_9
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;

    sget-object v3, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    if-ne v1, v3, :cond_a

    .line 878
    iput v2, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    goto :goto_1

    .line 880
    :cond_a
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    goto :goto_1
.end method

.method private executeUpdate()V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->executeUpdate(Ljava/lang/Boolean;)V

    .line 631
    return-void
.end method

.method private executeUpdate(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "updateWidget"    # Ljava/lang/Boolean;

    .prologue
    .line 634
    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 641
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    invoke-direct {p0, p0}, Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 643
    :cond_0
    return-void

    .line 634
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    .line 636
    .local v0, "callback":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :try_start_0
    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback;->update()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private executeUpdateProgress()V
    .locals 4

    .prologue
    .line 646
    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    return-void

    .line 646
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    .line 648
    .local v0, "callback":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :try_start_0
    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback;->updateProgress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCover()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 969
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v0

    .line 970
    .local v0, "media":Lorg/videolan/libvlc/Media;
    if-eqz v0, :cond_0

    const/16 v1, 0x200

    invoke-static {p0, v0, v1}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentMedia()Lorg/videolan/libvlc/Media;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v0

    return-object v0
.end method

.method private handleVout()V
    .locals 5

    .prologue
    .line 614
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string v3, "VLC/AudioService"

    const-string v4, "Obtained video track"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v3

    invoke-virtual {v3}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v3}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v3

    iget v4, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "MRL":Ljava/lang/String;
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    .line 620
    .local v1, "index":I
    const/4 v3, -0x1

    iput v3, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    .line 621
    iget-object v3, p0, Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;

    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 623
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/videolan/vlc/audio/AudioService;->hideNotification(Z)V

    .line 626
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v0, v2, v1, v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    goto :goto_0
.end method

.method private hasCurrentMedia()Z
    .locals 2

    .prologue
    .line 670
    iget v0, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideNotification()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->hideNotification(Z)V

    .line 788
    return-void
.end method

.method private hideNotification(Z)V
    .locals 1
    .param p1, "stopPlayback"    # Z

    .prologue
    .line 796
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->stopForeground(Z)V

    .line 797
    if-eqz p1, :cond_0

    .line 798
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService;->stopSelf()V

    .line 799
    :cond_0
    return-void
.end method

.method private declared-synchronized loadLastPlaylist()V
    .locals 12

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasExternalStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 1455
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1414
    :cond_1
    const/4 v4, 0x0

    .line 1415
    .local v4, "input":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1416
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 1418
    .local v9, "rowCount":I
    const/4 v8, 0x0

    .line 1420
    .local v8, "position":I
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1424
    .local v7, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "CurrentMedia.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1425
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v5, "input":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1426
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1427
    .local v2, "currentMedia":Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    .line 1428
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v0, 0x0

    .line 1429
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1432
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MediaList.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1433
    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1434
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1442
    iget-object v10, p0, Lorg/videolan/vlc/audio/AudioService;->mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v8, v11}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->load(Ljava/util/List;IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1448
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1449
    :cond_2
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    .line 1450
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 1435
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :try_start_9
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v10

    if-eqz v10, :cond_4

    .line 1437
    move v8, v9

    .line 1438
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1443
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "currentMedia":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 1444
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1448
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1449
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 1450
    :catch_1
    move-exception v3

    .line 1451
    .local v3, "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1410
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v7    # "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "position":I
    .end local v9    # "rowCount":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1446
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "position":I
    .restart local v9    # "rowCount":I
    :catchall_1
    move-exception v10

    .line 1448
    :goto_3
    if-eqz v0, :cond_6

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1449
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1453
    :cond_7
    :goto_4
    :try_start_e
    throw v10

    .line 1450
    :catch_2
    move-exception v3

    .line 1451
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1450
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "currentMedia":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 1451
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 1446
    .end local v2    # "currentMedia":Ljava/lang/String;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "currentMedia":Ljava/lang/String;
    :catchall_4
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1443
    .end local v2    # "currentMedia":Ljava/lang/String;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "currentMedia":Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private next()V
    .locals 3

    .prologue
    .line 889
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    iget v2, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    .line 892
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v0

    .line 893
    .local v0, "size":I
    if-eqz v0, :cond_0

    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    if-lt v1, v0, :cond_1

    .line 894
    :cond_0
    const-string v1, "VLC/AudioService"

    const-string v2, "Warning: invalid next index, aborted !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->stop()V

    .line 909
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget v2, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 901
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 902
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService;->setUpRemoteControlClient()V

    .line 903
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->showNotification()V

    .line 904
    invoke-direct {p0, p0}, Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 905
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->updateRemoteControlClientMetadata()V

    .line 906
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->saveCurrentMedia()V

    .line 908
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V

    goto :goto_0
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 802
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService;->setUpRemoteControlClient()V

    .line 803
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->pause()V

    .line 806
    return-void
.end method

.method private play()V
    .locals 2

    .prologue
    .line 809
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService;->setUpRemoteControlClient()V

    .line 811
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->play()V

    .line 812
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 813
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->showNotification()V

    .line 814
    invoke-direct {p0, p0}, Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 816
    :cond_0
    return-void
.end method

.method private previous()V
    .locals 3

    .prologue
    .line 933
    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    iput v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    .line 934
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 935
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 937
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v0

    .line 938
    .local v0, "size":I
    if-eqz v0, :cond_1

    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    if-lt v1, v0, :cond_2

    .line 939
    :cond_1
    const-string v1, "VLC/AudioService"

    const-string v2, "Warning: invalid previous index, aborted !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->stop()V

    .line 953
    :goto_0
    return-void

    .line 944
    :cond_2
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    iget v2, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 945
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 946
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService;->setUpRemoteControlClient()V

    .line 947
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->showNotification()V

    .line 948
    invoke-direct {p0, p0}, Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 949
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->updateRemoteControlClientMetadata()V

    .line 950
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->saveCurrentMedia()V

    .line 952
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V

    goto :goto_0
.end method

.method private declared-synchronized saveCurrentMedia()V
    .locals 5

    .prologue
    .line 1458
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasExternalStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1476
    :goto_0
    monitor-exit p0

    return-void

    .line 1465
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CurrentMedia.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1466
    .local v2, "output":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1467
    .local v0, "bw":Ljava/io/BufferedWriter;
    iget-object v3, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v3}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v3

    iget v4, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1468
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1469
    iget-boolean v3, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1470
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1471
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1472
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1473
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1474
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1458
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1469
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    const-string v3, "0"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized saveMediaList()V
    .locals 6

    .prologue
    .line 1479
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasExternalStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 1497
    :goto_0
    monitor-exit p0

    return-void

    .line 1486
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MediaList.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v3, "output":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1488
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1492
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 1493
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1494
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "i":I
    .end local v3    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1495
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1479
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1489
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "i":I
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1490
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1488
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setRemoteControlClientPlaybackState(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x104
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRepeatType(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 964
    invoke-static {}, Lorg/videolan/vlc/audio/RepeatType;->values()[Lorg/videolan/vlc/audio/RepeatType;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;

    .line 965
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V

    .line 966
    return-void
.end method

.method private showNotification()V
    .locals 25
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 706
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v11

    .line 707
    .local v11, "media":Lorg/videolan/libvlc/Media;
    if-nez v11, :cond_0

    .line 784
    .end local v11    # "media":Lorg/videolan/libvlc/Media;
    :goto_0
    return-void

    .line 709
    .restart local v11    # "media":Lorg/videolan/libvlc/Media;
    :cond_0
    const/16 v22, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v11, v1}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 710
    .local v6, "cover":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v19

    .line 711
    .local v19, "title":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, "artist":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "album":Ljava/lang/String;
    new-instance v22, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    const v23, 0x7f02026a

    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 718
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 719
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 720
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 722
    .local v5, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v13, Landroid/content/Intent;

    const-class v22, Lorg/videolan/vlc/gui/MainActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    .local v13, "notificationIntent":Landroid/content/Intent;
    const-string v22, "org.videolan.vlc.gui.ShowPlayer"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-string v22, "from_notification"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 728
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanOrLater()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 729
    new-instance v7, Landroid/content/Intent;

    const-string v22, "org.videolan.vlc.remote.Backward"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v7, "iBackward":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-string v22, "org.videolan.vlc.remote.PlayPause"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v9, "iPlay":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    const-string v22, "org.videolan.vlc.remote.Forward"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v8, "iForward":Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    const-string v22, "org.videolan.vlc.remote.Stop"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v10, "iStop":Landroid/content/Intent;
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 734
    .local v15, "piBackward":Landroid/app/PendingIntent;
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 735
    .local v17, "piPlay":Landroid/app/PendingIntent;
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 736
    .local v16, "piForward":Landroid/app/PendingIntent;
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 738
    .local v18, "piStop":Landroid/app/PendingIntent;
    new-instance v20, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/audio/AudioService;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f0300ac

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 739
    .local v20, "view":Landroid/widget/RemoteViews;
    if-eqz v6, :cond_1

    .line 740
    const v22, 0x7f070106

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 741
    :cond_1
    const v22, 0x7f0702ee

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 742
    const v22, 0x7f07010a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 743
    const v23, 0x7f070118

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v22

    if-eqz v22, :cond_3

    const v22, 0x7f020243

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 744
    const v22, 0x7f070118

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 745
    const v22, 0x7f0702ef

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 746
    const v22, 0x7f0702f0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 747
    const v22, 0x7f070100

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 749
    new-instance v21, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/audio/AudioService;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f0300ad

    invoke-direct/range {v21 .. v23}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 750
    .local v21, "view_expanded":Landroid/widget/RemoteViews;
    if-eqz v6, :cond_2

    .line 751
    const v22, 0x7f070106

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 752
    :cond_2
    const v22, 0x7f0702ee

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 753
    const v22, 0x7f07010a

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 754
    const v22, 0x7f0702f2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 755
    const v23, 0x7f070118

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v22

    if-eqz v22, :cond_4

    const v22, 0x7f020243

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 756
    const v22, 0x7f0702f3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 757
    const v22, 0x7f070118

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 758
    const v22, 0x7f0702ef

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 759
    const v22, 0x7f0702f0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 760
    const v22, 0x7f070100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 762
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 763
    .local v12, "notification":Landroid/app/Notification;
    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 764
    move-object/from16 v0, v21

    iput-object v0, v12, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 776
    .end local v4    # "artist":Ljava/lang/String;
    .end local v7    # "iBackward":Landroid/content/Intent;
    .end local v8    # "iForward":Landroid/content/Intent;
    .end local v9    # "iPlay":Landroid/content/Intent;
    .end local v10    # "iStop":Landroid/content/Intent;
    .end local v15    # "piBackward":Landroid/app/PendingIntent;
    .end local v16    # "piForward":Landroid/app/PendingIntent;
    .end local v17    # "piPlay":Landroid/app/PendingIntent;
    .end local v18    # "piStop":Landroid/app/PendingIntent;
    .end local v20    # "view":Landroid/widget/RemoteViews;
    .end local v21    # "view_expanded":Landroid/widget/RemoteViews;
    :goto_3
    new-instance v22, Landroid/content/Intent;

    const-class v23, Lorg/videolan/vlc/audio/AudioService;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/audio/AudioService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 777
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Lorg/videolan/vlc/audio/AudioService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 779
    .end local v3    # "album":Ljava/lang/String;
    .end local v5    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "cover":Landroid/graphics/Bitmap;
    .end local v11    # "media":Lorg/videolan/libvlc/Media;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "notificationIntent":Landroid/content/Intent;
    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v19    # "title":Ljava/lang/String;
    :catch_0
    move-exception v22

    goto/16 :goto_0

    .line 743
    .restart local v3    # "album":Ljava/lang/String;
    .restart local v4    # "artist":Ljava/lang/String;
    .restart local v5    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v6    # "cover":Landroid/graphics/Bitmap;
    .restart local v7    # "iBackward":Landroid/content/Intent;
    .restart local v8    # "iForward":Landroid/content/Intent;
    .restart local v9    # "iPlay":Landroid/content/Intent;
    .restart local v10    # "iStop":Landroid/content/Intent;
    .restart local v11    # "media":Lorg/videolan/libvlc/Media;
    .restart local v13    # "notificationIntent":Landroid/content/Intent;
    .restart local v14    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v15    # "piBackward":Landroid/app/PendingIntent;
    .restart local v16    # "piForward":Landroid/app/PendingIntent;
    .restart local v17    # "piPlay":Landroid/app/PendingIntent;
    .restart local v18    # "piStop":Landroid/app/PendingIntent;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v20    # "view":Landroid/widget/RemoteViews;
    :cond_3
    const v22, 0x7f020251

    goto/16 :goto_1

    .line 755
    .restart local v21    # "view_expanded":Landroid/widget/RemoteViews;
    :cond_4
    const v22, 0x7f020251

    goto :goto_2

    .line 767
    .end local v7    # "iBackward":Landroid/content/Intent;
    .end local v8    # "iForward":Landroid/content/Intent;
    .end local v9    # "iPlay":Landroid/content/Intent;
    .end local v10    # "iStop":Landroid/content/Intent;
    .end local v15    # "piBackward":Landroid/app/PendingIntent;
    .end local v16    # "piForward":Landroid/app/PendingIntent;
    .end local v17    # "piPlay":Landroid/app/PendingIntent;
    .end local v18    # "piStop":Landroid/app/PendingIntent;
    .end local v20    # "view":Landroid/widget/RemoteViews;
    .end local v21    # "view_expanded":Landroid/widget/RemoteViews;
    :cond_5
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 768
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 769
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isJellyBeanOrLater()Z

    move-result v23

    if-eqz v23, :cond_6

    .end local v4    # "artist":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 771
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v22

    .line 772
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 773
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .restart local v12    # "notification":Landroid/app/Notification;
    goto :goto_3

    .line 770
    .end local v12    # "notification":Landroid/app/Notification;
    .restart local v4    # "artist":Ljava/lang/String;
    :cond_6
    invoke-virtual {v11}, Lorg/videolan/libvlc/Media;->getSubtitle()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_4
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 1519
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1520
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1521
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v2, "duration"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1523
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1524
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1525
    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1526
    return-void
.end method

.method private shuffle()V
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 958
    :cond_0
    iget-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z

    .line 959
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->saveCurrentMedia()V

    .line 960
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V

    .line 961
    return-void

    .line 958
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->stop()V

    .line 820
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 821
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->getEventHandler()Lorg/videolan/libvlc/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService;->mListEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 822
    const/16 v0, 0x106

    invoke-direct {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->setRemoteControlClientPlaybackState(I)V

    .line 823
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    .line 824
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 825
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hideNotification()V

    .line 827
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V

    .line 828
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V

    .line 829
    invoke-direct {p0, v2}, Lorg/videolan/vlc/audio/AudioService;->changeAudioFocus(Z)V

    .line 830
    return-void
.end method

.method private updateRemoteControlClientMetadata()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 913
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v3

    if-nez v3, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v2

    .line 917
    .local v2, "media":Lorg/videolan/libvlc/Media;
    iget-object v3, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 918
    iget-object v3, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v1

    .line 919
    .local v1, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 920
    const/4 v3, 0x2

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 921
    const/16 v3, 0xd

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 922
    const/4 v3, 0x6

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 923
    const/4 v3, 0x7

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 924
    const/16 v3, 0x9

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 926
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCover()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 927
    .local v0, "cover":Landroid/graphics/Bitmap;
    const/16 v4, 0x64

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 928
    invoke-virtual {v1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0

    .line 927
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateWidget(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1355
    const-string v0, "VLC/AudioService"

    const-string v1, "Updating widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->updateWidgetState(Landroid/content/Context;)V

    .line 1357
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->updateWidgetCover(Landroid/content/Context;)V

    .line 1358
    return-void
.end method

.method private updateWidgetCover(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1381
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "org.videolan.vlc"

    const-string v3, "org.videolan.vlc.widget.VLCAppWidgetProvider"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const-string v2, "org.videolan.vlc.widget.UPDATE_COVER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v2

    const/16 v3, 0x40

    invoke-static {p0, v2, v3}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1385
    .local v0, "cover":Landroid/graphics/Bitmap;
    :goto_0
    const-string v2, "cover"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1387
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/audio/AudioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1388
    return-void

    .line 1384
    .end local v0    # "cover":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWidgetPosition(Landroid/content/Context;F)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pos"    # F

    .prologue
    .line 1393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1394
    .local v1, "timestamp":J
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1395
    iget-wide v3, p0, Lorg/videolan/vlc/audio/AudioService;->mWidgetPositionTimestamp:J

    sub-long v3, v1, v3

    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v5

    .line 1396
    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v5

    const-wide/16 v7, 0x32

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    invoke-direct {p0, p1}, Lorg/videolan/vlc/audio/AudioService;->updateWidgetState(Landroid/content/Context;)V

    .line 1401
    iput-wide v1, p0, Lorg/videolan/vlc/audio/AudioService;->mWidgetPositionTimestamp:J

    .line 1402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1403
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "org.videolan.vlc"

    const-string v4, "org.videolan.vlc.widget.VLCAppWidgetProvider"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v3, "org.videolan.vlc.widget.UPDATE_POSITION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    const-string v3, "position"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 1406
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateWidgetState(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1362
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc"

    const-string v2, "org.videolan.vlc.widget.VLCAppWidgetProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    const-string v1, "org.videolan.vlc.widget.UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1366
    const-string v1, "title"

    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    const-string v1, "artist"

    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    :goto_0
    const-string v1, "isplaying"

    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1376
    return-void

    .line 1370
    :cond_0
    const-string v1, "title"

    const v2, 0x7f0c000e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    const-string v1, "artist"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private validateLocation(Ljava/lang/String;)Z
    .locals 5
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1502
    const-string v3, "\\w+://.+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1503
    const-string v3, "file://"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1504
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1508
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1515
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return v2

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Ljava/net/URISyntaxException;
    goto :goto_0

    .line 1515
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 293
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mInterface:Lorg/videolan/vlc/interfaces/IAudioService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/4 v6, -0x1

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 158
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;

    .line 164
    iput v6, p0, Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I

    .line 165
    iput v6, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I

    .line 166
    iput v6, p0, Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I

    .line 167
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;

    .line 168
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;

    .line 169
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 170
    const-class v7, Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    .line 174
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lorg/videolan/vlc/audio/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 175
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "VLC/AudioService"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 179
    const-string v5, "org.videolan.vlc.remote.Backward"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v5, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v5, "org.videolan.vlc.remote.Play"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v5, "org.videolan.vlc.remote.Pause"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v5, "org.videolan.vlc.remote.Stop"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v5, "org.videolan.vlc.remote.Forward"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v5, "org.videolan.vlc.remote.LastPlaylist"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v5, "org.videolan.vlc.widget.INIT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v5, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v5, "org.videolan.vlc.IncomingCallIntent"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v5, "org.videolan.vlc.CallEndedIntent"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lorg/videolan/vlc/audio/AudioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 195
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v5, "enable_steal_remote_control"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 197
    .local v4, "stealRemoteControl":Z
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isFroyoOrLater()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_2

    .line 199
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    if-eqz v4, :cond_1

    .line 201
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 202
    :cond_1
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    new-instance v5, Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-direct {v5}, Lorg/videolan/vlc/RemoteControlClientReceiver;-><init>()V

    iput-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    .line 204
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-virtual {p0, v5, v1}, Lorg/videolan/vlc/audio/AudioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    :cond_2
    return-void

    .line 159
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    .end local v4    # "stealRemoteControl":Z
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/videolan/libvlc/LibVlcException;
    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVlcException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 281
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->stop()V

    .line 282
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/audio/AudioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiver:Lorg/videolan/vlc/RemoteControlClientReceiver;

    .line 289
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x1

    .line 267
    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    const-string v1, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioService;->loadLastPlaylist()V

    .line 274
    :cond_2
    invoke-direct {p0, p0}, Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V

    .line 275
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public setUpRemoteControlClient()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 215
    .local v1, "context":Landroid/content/Context;
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 217
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 220
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v4, :cond_0

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 226
    .local v3, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/media/RemoteControlClient;

    invoke-direct {v4, v3}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 227
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 230
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v3    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 231
    const/16 v5, 0xb5

    .line 230
    invoke-virtual {v4, v5}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isFroyoOrLater()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService;->mRemoteControlClientReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
