.class public Lorg/videolan/libvlc/LibVLC;
.super Ljava/lang/Object;
.source "LibVLC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;
    }
.end annotation


# static fields
.field public static final AOUT_AUDIOTRACK:I = 0x1

.field public static final AOUT_AUDIOTRACK_JAVA:I = 0x0

.field public static final AOUT_OPENSLES:I = 0x2

.field private static final DEFAULT_CODEC_LIST:Ljava/lang/String; = "mediacodec,iomx,all"

.field public static final DEV_HW_DECODER_AUTOMATIC:I = -0x1

.field public static final DEV_HW_DECODER_MEDIACODEC:I = 0x2

.field public static final DEV_HW_DECODER_MEDIACODEC_DR:I = 0x3

.field public static final DEV_HW_DECODER_OMX:I = 0x0

.field public static final DEV_HW_DECODER_OMX_DR:I = 0x1

.field public static final HW_ACCELERATION_AUTOMATIC:I = -0x1

.field public static final HW_ACCELERATION_DECODING:I = 0x1

.field public static final HW_ACCELERATION_DISABLED:I = 0x0

.field public static final HW_ACCELERATION_FULL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VLC/LibVLC"

.field public static final VOUT_ANDROID_SURFACE:I = 0x0

.field public static final VOUT_OPEGLES2:I = 0x1

.field private static sInstance:Lorg/videolan/libvlc/LibVLC;


# instance fields
.field private aout:I

.field private chroma:Ljava/lang/String;

.field private codecList:Ljava/lang/String;

.field private deblocking:I

.field private devCodecList:Ljava/lang/String;

.field private devHardwareDecoder:I

.field private equalizer:[F

.field private frameSkip:Z

.field private hardwareAcceleration:I

.field private httpReconnect:Z

.field private mAout:Lorg/videolan/libvlc/AudioOutput;

.field private mCachePath:Ljava/lang/String;

.field private mDebugLogBuffer:Ljava/lang/StringBuffer;

.field private mInternalMediaPlayerIndex:I

.field private mInternalMediaPlayerInstance:J

.field private mIsBufferingLog:Z

.field private mIsInitialized:Z

.field private mLibVlcInstance:J

.field private mMediaList:Lorg/videolan/libvlc/MediaList;

.field private mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

.field private mPrimaryList:Lorg/videolan/libvlc/MediaList;

.field private networkCaching:I

.field private subtitlesEncoding:Ljava/lang/String;

.field private timeStretching:Z

.field private verboseMode:Z

.field private vout:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 111
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    .line 112
    const-string v3, "iomx-gingerbread"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "vlcjni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    :goto_1
    return-void

    .line 113
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-gt v3, v4, :cond_2

    .line 114
    const-string v3, "iomx-hc"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 123
    .restart local v1    # "t":Ljava/lang/Throwable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    .line 124
    const-string v3, "VLC/LibVLC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to load the iomx library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-gt v3, v4, :cond_3

    .line 116
    const-string v3, "iomx-ics"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-gt v3, v4, :cond_4

    .line 118
    const-string v3, "iomx-jbmr2"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_0

    .line 120
    const-string v3, "iomx-kk"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 128
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 129
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "VLC/LibVLC"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load vlcjni library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 132
    .end local v2    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v3, "VLC/LibVLC"

    .end local v1    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encountered a security issue when loading vlcjni library: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v4, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    .line 59
    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    .line 60
    iput-wide v4, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerInstance:J

    .line 67
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsBufferingLog:Z

    .line 75
    iput v2, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 76
    iput v2, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    .line 77
    const-string v0, "mediacodec,iomx,all"

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    .line 78
    iput-object v3, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->subtitlesEncoding:Ljava/lang/String;

    .line 80
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    .line 81
    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    .line 82
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->timeStretching:Z

    .line 83
    iput v2, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->chroma:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->verboseMode:Z

    .line 86
    iput-object v3, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    .line 87
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->frameSkip:Z

    .line 88
    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->networkCaching:I

    .line 89
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->httpReconnect:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mCachePath:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    .line 174
    new-instance v0, Lorg/videolan/libvlc/AudioOutput;

    invoke-direct {v0}, Lorg/videolan/libvlc/AudioOutput;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    .line 175
    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public static PathToURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 790
    if-nez p0, :cond_0

    .line 791
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot convert null path!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    invoke-static {p0}, Lorg/videolan/libvlc/LibVLC;->nativeToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private applyEqualizer()V
    .locals 3

    .prologue
    .line 462
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerInstance:J

    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;->setNativeEqualizer(J[F)I

    .line 463
    return-void
.end method

.method private native detachEventHandler()V
.end method

.method public static getExistingInstance()Lorg/videolan/libvlc/LibVLC;
    .locals 2

    .prologue
    .line 164
    const-class v1, Lorg/videolan/libvlc/LibVLC;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/videolan/libvlc/LibVLC;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 147
    const-class v1, Lorg/videolan/libvlc/LibVLC;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0}, Lorg/videolan/libvlc/LibVLC;-><init>()V

    sput-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    .line 147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    sget-object v0, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native getThumbnail(JLjava/lang/String;II)[B
.end method

.method private native hasVideoTrack(JLjava/lang/String;)Z
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation
.end method

.method public static native nativeIsPathDirectory(Ljava/lang/String;)Z
.end method

.method public static native nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static native nativeToURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private onNativeCrash()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    invoke-interface {v0}, Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;->onNativeCrash()V

    .line 841
    :cond_0
    return-void
.end method

.method private native playMRL(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method private native readTracksInfo(JLjava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;
.end method

.method public static declared-synchronized restart(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    const-class v2, Lorg/videolan/libvlc/LibVLC;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 242
    :try_start_1
    sget-object v1, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->destroy()V

    .line 243
    sget-object v1, Lorg/videolan/libvlc/LibVLC;->sInstance:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v1, p0}, Lorg/videolan/libvlc/LibVLC;->init(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "lve":Lorg/videolan/libvlc/LibVlcException;
    :try_start_2
    const-string v1, "VLC/LibVLC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to reinit libvlc: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "lve":Lorg/videolan/libvlc/LibVlcException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native sendMouseEvent(IIII)V
.end method

.method private native setEventHandler(Lorg/videolan/libvlc/EventHandler;)V
.end method

.method private native setNativeEqualizer(J[F)I
.end method


# virtual methods
.method public native addSubtitleTrack(Ljava/lang/String;)I
.end method

.method public native attachSubtitlesSurface(Landroid/view/Surface;)V
.end method

.method public native attachSurface(Landroid/view/Surface;Lorg/videolan/libvlc/IVideoPlayer;)V
.end method

.method public native changeset()Ljava/lang/String;
.end method

.method public clearBuffer()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 640
    return-void
.end method

.method public closeAout()V
    .locals 2

    .prologue
    .line 557
    const-string v0, "VLC/LibVLC"

    const-string v1, "Closing the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AudioOutput;->release()V

    .line 559
    return-void
.end method

.method public native compiler()Ljava/lang/String;
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 520
    const-string v0, "VLC/LibVLC"

    const-string v1, "Destroying LibVLC instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->nativeDestroy()V

    .line 522
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->detachEventHandler()V

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    .line 524
    return-void
.end method

.method public native detachSubtitlesSurface()V
.end method

.method public native detachSurface()V
.end method

.method public native eventVideoPlayerActivityCreated(Z)V
.end method

.method public expand()I
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->expandMedia(I)I

    move-result v0

    return v0
.end method

.method public expandAndPlay()I
    .locals 3

    .prologue
    .line 806
    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->expandMedia(I)I

    move-result v0

    .line 807
    .local v0, "r":I
    if-nez v0, :cond_0

    .line 808
    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    invoke-virtual {p0, v1}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 809
    :cond_0
    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "VLC/LibVLC"

    const-string v1, "LibVLC is was destroyed yet before finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lorg/videolan/libvlc/LibVLC;->destroy()V

    .line 188
    :cond_0
    return-void
.end method

.method public frameSkipEnabled()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->frameSkip:Z

    return v0
.end method

.method public getAout()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    return v0
.end method

.method public native getAudioTrack()I
.end method

.method public native getAudioTrackDescription()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getAudioTracksCount()I
.end method

.method public native getBands()[F
.end method

.method public getBufferContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public native getChapterCountForTitle(I)I
.end method

.method public getChroma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->chroma:Ljava/lang/String;

    return-object v0
.end method

.method public getDeblocking()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x44960000    # 1200.0f

    .line 402
    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    .line 403
    .local v1, "ret":I
    iget v3, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    if-gez v3, :cond_7

    .line 411
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->getMachineSpecs()Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;

    move-result-object v0

    .line 412
    .local v0, "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    if-nez v0, :cond_0

    move v2, v1

    .line 426
    .end local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 414
    .end local v2    # "ret":I
    .restart local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    .restart local v1    # "ret":I
    :cond_0
    iget-boolean v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV6:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasArmV7:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->hasMips:Z

    if-eqz v3, :cond_4

    .line 415
    :cond_2
    const/4 v1, 0x4

    .end local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    :cond_3
    :goto_1
    move v2, v1

    .line 426
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 416
    .end local v2    # "ret":I
    .restart local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    .restart local v1    # "ret":I
    :cond_4
    iget v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->frequency:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    iget v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->processors:I

    if-le v3, v5, :cond_5

    .line 417
    const/4 v1, 0x1

    goto :goto_1

    .line 418
    :cond_5
    iget v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->bogoMIPS:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    iget v3, v0, Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;->processors:I

    if-le v3, v5, :cond_6

    .line 419
    const/4 v1, 0x1

    .line 420
    const-string v3, "VLC/LibVLC"

    const-string v4, "Used bogoMIPS due to lack of frequency info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 422
    :cond_6
    const/4 v1, 0x3

    .line 423
    goto :goto_1

    .end local v0    # "m":Lorg/videolan/libvlc/LibVlcUtil$MachineSpecs;
    :cond_7
    iget v3, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_3

    .line 424
    const/4 v1, 0x3

    goto :goto_1
.end method

.method public getDevHardwareDecoder()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    return v0
.end method

.method public getEqualizer()[F
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    return-object v0
.end method

.method public getHardwareAcceleration()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    return v0
.end method

.method public getHttpReconnect()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->httpReconnect:Z

    return v0
.end method

.method public native getLength()J
.end method

.method public getMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    return-object v0
.end method

.method public getMediaOptions(ZZ)[Ljava/lang/String;
    .locals 3
    .param p1, "noHardwareAcceleration"    # Z
    .param p2, "noVideo"    # Z

    .prologue
    .line 336
    iget v1, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 337
    const/4 p2, 0x0

    move p1, p2

    .line 341
    .end local p1    # "noHardwareAcceleration":Z
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 353
    const-string v1, ":file-caching=1500"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v1, ":network-caching=1500"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, ":codec="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_1
    if-eqz p2, :cond_2

    .line 358
    const-string v1, ":no-video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 338
    .end local v0    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "noHardwareAcceleration":Z
    :cond_3
    if-nez p1, :cond_0

    .line 339
    invoke-virtual {p0}, Lorg/videolan/libvlc/LibVLC;->getHardwareAcceleration()I

    move-result v1

    if-nez v1, :cond_4

    const/4 p1, 0x1

    :goto_2
    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    .line 355
    .end local p1    # "noHardwareAcceleration":Z
    .restart local v0    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    goto :goto_1
.end method

.method public getNetworkCaching()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->networkCaching:I

    return v0
.end method

.method public native getPlayerState()I
.end method

.method public native getPosition()F
.end method

.method public native getPreset(I)[F
.end method

.method public native getPresets()[Ljava/lang/String;
.end method

.method public getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mPrimaryList:Lorg/videolan/libvlc/MediaList;

    return-object v0
.end method

.method public native getRate()F
.end method

.method public native getSpuTrack()I
.end method

.method public native getSpuTrackDescription()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getSpuTracksCount()I
.end method

.method public native getStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getSubtitlesEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->subtitlesEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;II)[B
    .locals 6
    .param p1, "mrl"    # Ljava/lang/String;
    .param p2, "i_width"    # I
    .param p3, "i_height"    # I

    .prologue
    .line 595
    iget-wide v1, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/LibVLC;->getThumbnail(JLjava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public native getTitleCount()I
.end method

.method public native getVideoTracksCount()I
.end method

.method public native getVolume()I
.end method

.method public getVout()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    return v0
.end method

.method public hasVideoTrack(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;->hasVideoTrack(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/videolan/libvlc/LibVlcException;
        }
    .end annotation

    .prologue
    .line 498
    const-string v1, "VLC/LibVLC"

    const-string v2, "Initializing LibVLC"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mDebugLogBuffer:Ljava/lang/StringBuffer;

    .line 500
    iget-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 501
    invoke-static {p1}, Lorg/videolan/libvlc/LibVlcUtil;->hasCompatibleCPU(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    const-string v1, "VLC/LibVLC"

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v1, Lorg/videolan/libvlc/LibVlcException;

    invoke-direct {v1}, Lorg/videolan/libvlc/LibVlcException;-><init>()V

    throw v1

    .line 506
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 507
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mCachePath:Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->nativeInit()V

    .line 509
    new-instance v1, Lorg/videolan/libvlc/MediaList;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mPrimaryList:Lorg/videolan/libvlc/MediaList;

    iput-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 510
    invoke-static {}, Lorg/videolan/libvlc/EventHandler;->getInstance()Lorg/videolan/libvlc/EventHandler;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/videolan/libvlc/LibVLC;->setEventHandler(Lorg/videolan/libvlc/EventHandler;)V

    .line 511
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/libvlc/LibVLC;->mIsInitialized:Z

    .line 513
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    return-void

    .line 507
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initAout(III)V
    .locals 2
    .param p1, "sampleRateInHz"    # I
    .param p2, "channels"    # I
    .param p3, "samples"    # I

    .prologue
    .line 531
    const-string v0, "VLC/LibVLC"

    const-string v1, "Opening the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0, p1, p2, p3}, Lorg/videolan/libvlc/AudioOutput;->init(III)V

    .line 533
    return-void
.end method

.method public isDebugBuffering()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->mIsBufferingLog:Z

    return v0
.end method

.method public isDirectRendering()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 327
    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 328
    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    if-eq v2, v1, :cond_1

    .line 329
    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 328
    goto :goto_0

    .line 331
    :cond_2
    iget v2, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public native isPlaying()Z
.end method

.method public native isSeekable()Z
.end method

.method public isVerboseMode()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->verboseMode:Z

    return v0
.end method

.method public native pause()V
.end method

.method public pauseAout()V
    .locals 2

    .prologue
    .line 548
    const-string v0, "VLC/LibVLC"

    const-string v1, "Pausing the java audio output"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AudioOutput;->pause()V

    .line 550
    return-void
.end method

.method public native play()V
.end method

.method public playAudio([BI)V
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "bufferSize"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mAout:Lorg/videolan/libvlc/AudioOutput;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/AudioOutput;->playBuffer([BI)V

    .line 541
    return-void
.end method

.method public playIndex(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 567
    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "mrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaList;->getMediaOptions(I)[Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "options":[Ljava/lang/String;
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    .line 572
    iget-wide v2, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/videolan/libvlc/LibVLC;->playMRL(JLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMRL(Ljava/lang/String;)V
    .locals 3
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->getMediaOptions(I)[Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "options":[Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/libvlc/LibVLC;->mInternalMediaPlayerIndex:I

    .line 584
    iget-wide v1, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/videolan/libvlc/LibVLC;->playMRL(JLjava/lang/String;[Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public readTracksInfo(Ljava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;
    .locals 2
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-wide v0, p0, Lorg/videolan/libvlc/LibVLC;->mLibVlcInstance:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;->readTracksInfo(JLjava/lang/String;)[Lorg/videolan/libvlc/TrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public native readTracksInfoInternal()[Lorg/videolan/libvlc/TrackInfo;
.end method

.method public setAout(I)V
    .locals 1
    .param p1, "aout"    # I

    .prologue
    .line 376
    if-gez p1, :cond_1

    .line 377
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isICSOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    .line 380
    :goto_1
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_1
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->aout:I

    goto :goto_1
.end method

.method public native setAudioTrack(I)I
.end method

.method public setChroma(Ljava/lang/String;)V
    .locals 1
    .param p1, "chroma"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v0, "YV12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isGingerbreadOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    .end local p1    # "chroma":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->chroma:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setDeblocking(I)V
    .locals 0
    .param p1, "deblocking"    # I

    .prologue
    .line 430
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->deblocking:I

    .line 431
    return-void
.end method

.method public setDevHardwareDecoder(I)V
    .locals 3
    .param p1, "devHardwareDecoder"    # I

    .prologue
    const/4 v0, -0x1

    .line 309
    if-eq p1, v0, :cond_3

    .line 310
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    .line 311
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 313
    :cond_0
    const-string v0, "iomx"

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    .line 317
    :goto_0
    const-string v1, "VLC/LibVLC"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HWDec forced: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 318
    invoke-virtual {p0}, Lorg/videolan/libvlc/LibVLC;->isDirectRendering()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-dr"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",none"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    .line 324
    :goto_2
    return-void

    .line 315
    :cond_1
    const-string v0, "mediacodec"

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 321
    :cond_3
    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->devHardwareDecoder:I

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->devCodecList:Ljava/lang/String;

    goto :goto_2
.end method

.method public setEqualizer([F)V
    .locals 0
    .param p1, "equalizer"    # [F

    .prologue
    .line 456
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->equalizer:[F

    .line 457
    invoke-direct {p0}, Lorg/videolan/libvlc/LibVLC;->applyEqualizer()V

    .line 458
    return-void
.end method

.method public setFrameSkip(Z)V
    .locals 0
    .param p1, "frameskip"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->frameSkip:Z

    .line 472
    return-void
.end method

.method public setHardwareAcceleration(I)V
    .locals 5
    .param p1, "hardwareAcceleration"    # I

    .prologue
    const/4 v4, 0x0

    .line 260
    if-nez p1, :cond_0

    .line 261
    const-string v2, "VLC/LibVLC"

    const-string v3, "HWDec disabled: by user"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput v4, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 263
    const-string v2, "all"

    iput-object v2, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    .line 302
    .end local p1    # "hardwareAcceleration":I
    :goto_0
    return-void

    .line 266
    .restart local p1    # "hardwareAcceleration":I
    :cond_0
    invoke-static {}, Lorg/videolan/libvlc/HWDecoderUtil;->getDecoderFromDevice()Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    move-result-object v0

    .line 268
    .local v0, "decoder":Lorg/videolan/libvlc/HWDecoderUtil$Decoder;
    sget-object v2, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->NONE:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_1

    .line 270
    iput v4, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 271
    const-string v2, "all"

    iput-object v2, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    .line 272
    const-string v2, "VLC/LibVLC"

    const-string v3, "HWDec disabled: device not working with mediacodec,iomx"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_1
    sget-object v2, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->UNKNOWN:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_3

    .line 275
    if-gez p1, :cond_2

    .line 276
    iput v4, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 277
    const-string v2, "all"

    iput-object v2, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    .line 278
    const-string v2, "VLC/LibVLC"

    const-string v3, "HWDec disabled: automatic and (unknown device or android version < 4.3)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_2
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 281
    const-string v2, "mediacodec,iomx,all"

    iput-object v2, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    .line 282
    const-string v2, "VLC/LibVLC"

    const-string v3, "HWDec enabled: forced by user and unknown device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_3
    if-gez p1, :cond_4

    .line 287
    const/4 p1, 0x2

    .line 286
    .end local p1    # "hardwareAcceleration":I
    :cond_4
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->hardwareAcceleration:I

    .line 288
    sget-object v2, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->ALL:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_5

    .line 289
    const-string v2, "mediacodec,iomx,all"

    iput-object v2, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    .line 299
    :goto_1
    const-string v2, "VLC/LibVLC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HWDec enabled: device working with: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->MEDIACODEC:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_7

    .line 293
    const-string v2, "mediacodec,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_6
    :goto_2
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/libvlc/LibVLC;->codecList:Ljava/lang/String;

    goto :goto_1

    .line 294
    :cond_7
    sget-object v2, Lorg/videolan/libvlc/HWDecoderUtil$Decoder;->OMX:Lorg/videolan/libvlc/HWDecoderUtil$Decoder;

    if-ne v0, v2, :cond_6

    .line 295
    const-string v2, "iomx,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public setHttpReconnect(Z)V
    .locals 0
    .param p1, "httpReconnect"    # Z

    .prologue
    .line 487
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->httpReconnect:Z

    .line 488
    return-void
.end method

.method public setMediaList()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mPrimaryList:Lorg/videolan/libvlc/MediaList;

    iput-object v0, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 213
    return-void
.end method

.method public setMediaList(Lorg/videolan/libvlc/MediaList;)V
    .locals 0
    .param p1, "mediaList"    # Lorg/videolan/libvlc/MediaList;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 206
    return-void
.end method

.method public setNetworkCaching(I)V
    .locals 0
    .param p1, "networkcaching"    # I

    .prologue
    .line 479
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->networkCaching:I

    .line 480
    return-void
.end method

.method public setOnNativeCrashListener(Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    .prologue
    .line 835
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->mOnNativeCrashListener:Lorg/videolan/libvlc/LibVLC$OnNativeCrashListener;

    .line 836
    return-void
.end method

.method public native setPosition(F)V
.end method

.method public native setRate(F)V
.end method

.method public native setSpuTrack(I)I
.end method

.method public setSubtitlesEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitlesEncoding"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/videolan/libvlc/LibVLC;->subtitlesEncoding:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public native setSurface(Landroid/view/Surface;)V
.end method

.method public native setTime(J)J
.end method

.method public setTimeStretching(Z)V
    .locals 0
    .param p1, "timeStretching"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->timeStretching:Z

    .line 399
    return-void
.end method

.method public native setTitle(I)V
.end method

.method public setVerboseMode(Z)V
    .locals 0
    .param p1, "verboseMode"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lorg/videolan/libvlc/LibVLC;->verboseMode:Z

    .line 447
    return-void
.end method

.method public native setVolume(I)I
.end method

.method public setVout(I)V
    .locals 1
    .param p1, "vout"    # I

    .prologue
    .line 387
    if-gez p1, :cond_0

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    iput p1, p0, Lorg/videolan/libvlc/LibVLC;->vout:I

    goto :goto_0
.end method

.method public native startDebugBuffer()V
.end method

.method public native stop()V
.end method

.method public native stopDebugBuffer()V
.end method

.method public timeStretchingEnabled()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/videolan/libvlc/LibVLC;->timeStretching:Z

    return v0
.end method

.method public native version()Ljava/lang/String;
.end method
