.class public Lorg/videolan/vlc/audio/AudioServiceController;
.super Ljava/lang/Object;
.source "AudioServiceController.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/AudioServiceContoller"

.field private static mInstance:Lorg/videolan/vlc/audio/AudioServiceController;

.field private static mIsBound:Z


# instance fields
.field private final mAudioPlayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/interfaces/IAudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

.field private mAudioServiceConnection:Landroid/content/ServiceConnection;

.field private final mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lorg/videolan/vlc/audio/AudioServiceController$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/audio/AudioServiceController$1;-><init>(Lorg/videolan/vlc/audio/AudioServiceController;)V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/audio/AudioServiceController;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/audio/AudioServiceController;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateProgressAudioPlayer()V

    return-void
.end method

.method static synthetic access$2(Lorg/videolan/vlc/audio/AudioServiceController;Lorg/videolan/vlc/interfaces/IAudioService;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 48
    sput-boolean p0, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    return-void
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    return v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/audio/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioService;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/audio/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    return-object v0
.end method

.method public static getInstance()Lorg/videolan/vlc/audio/AudioServiceController;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/videolan/vlc/audio/AudioServiceController;->mInstance:Lorg/videolan/vlc/audio/AudioServiceController;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-direct {v0}, Lorg/videolan/vlc/audio/AudioServiceController;-><init>()V

    sput-object v0, Lorg/videolan/vlc/audio/AudioServiceController;->mInstance:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 72
    :cond_0
    sget-object v0, Lorg/videolan/vlc/audio/AudioServiceController;->mInstance:Lorg/videolan/vlc/audio/AudioServiceController;

    return-object v0
.end method

.method private remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "instance"    # Lorg/videolan/vlc/interfaces/IAudioService;
    .param p4, "functionName"    # Ljava/lang/String;
    .param p5, "parameterTypes"    # [Ljava/lang/Class;
    .param p6, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/videolan/vlc/interfaces/IAudioService;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    .line 240
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p3

    .line 223
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_0
    const-class v3, Lorg/videolan/vlc/interfaces/IAudioService;

    invoke-virtual {v3, p4, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 225
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p1, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .local v2, "returnVal":Ljava/lang/Object;, "TT;"
    move-object p3, v2

    .line 226
    goto :goto_0

    .line 227
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "returnVal":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    .line 238
    const-string v3, "VLC/AudioServiceContoller"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remote procedure call failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAudioPlayer()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    return-void

    .line 193
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .line 194
    .local v0, "player":Lorg/videolan/vlc/interfaces/IAudioPlayer;
    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayer;->update()V

    goto :goto_0
.end method

.method private updateProgressAudioPlayer()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    return-void

    .line 201
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .line 202
    .local v0, "player":Lorg/videolan/vlc/interfaces/IAudioPlayer;
    invoke-interface {v0}, Lorg/videolan/vlc/interfaces/IAudioPlayer;->updateProgress()V

    goto :goto_0
.end method


# virtual methods
.method public addAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V
    .locals 1
    .param p1, "ap"    # Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/audio/AudioServiceController;->append(Ljava/util/List;)V

    .line 264
    return-void
.end method

.method public append(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 267
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "append"

    .line 268
    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Ljava/util/List;

    aput-object v0, v5, v7

    .line 269
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    move-object v0, p0

    .line 267
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public bindAudioService(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/videolan/vlc/audio/AudioServiceController;->bindAudioService(Landroid/content/Context;Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;)V

    .line 88
    return-void
.end method

.method public bindAudioService(Landroid/content/Context;Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionListerner"    # Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

    .prologue
    const/4 v5, 0x1

    .line 91
    if-nez p1, :cond_1

    .line 92
    const-string v4, "VLC/AudioServiceContoller"

    const-string v5, "bindAudioService() with null Context. Ooops"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    sget-boolean v4, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    if-nez v4, :cond_2

    .line 98
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/videolan/vlc/audio/AudioService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v3, "service":Landroid/content/Intent;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "enable_headset_detection"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 104
    .local v1, "enableHS":Z
    new-instance v4, Lorg/videolan/vlc/audio/AudioServiceController$2;

    invoke-direct {v4, p0, v1, p2}, Lorg/videolan/vlc/audio/AudioServiceController$2;-><init>(Lorg/videolan/vlc/audio/AudioServiceController;ZLorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;)V

    iput-object v4, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    .line 134
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    sput-boolean v4, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    goto :goto_0

    .line 138
    .end local v1    # "enableHS":Z
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "service":Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    invoke-interface {v4, v5}, Lorg/videolan/vlc/interfaces/IAudioService;->addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 140
    :cond_3
    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2}, Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;->onConnectionSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "VLC/AudioServiceContoller"

    const-string v5, "remote procedure call failed: addAudioCallback()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz p2, :cond_0

    .line 145
    invoke-interface {p2}, Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;->onConnectionFailed()V

    goto :goto_0
.end method

.method public detectHeadset(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 453
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "detectHeadset"

    .line 454
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 455
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    .line 453
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getAlbum"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getArtist"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistNext()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getArtistNext"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtistPrev()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getArtistPrev"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Landroid/graphics/Bitmap;

    const-string v4, "getCover"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCoverNext()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Landroid/graphics/Bitmap;

    const-string v4, "getCoverNext"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCoverPrev()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Landroid/graphics/Bitmap;

    const-string v4, "getCoverPrev"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentMediaLocation()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getCurrentMediaLocation"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 378
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getLength"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMediaLocations()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v3, "def":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/util/List;

    const-string v4, "getMediaLocations"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRate()F
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 460
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "getRate"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getRepeatType()Lorg/videolan/vlc/audio/RepeatType;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 446
    invoke-static {}, Lorg/videolan/vlc/audio/RepeatType;->values()[Lorg/videolan/vlc/audio/RepeatType;

    move-result-object v7

    .line 447
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Lorg/videolan/vlc/audio/RepeatType;->None:Lorg/videolan/vlc/audio/RepeatType;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getRepeatType"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 446
    aget-object v0, v7, v0

    return-object v0
.end method

.method public getTime()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 383
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getTime"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getTitle"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleNext()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getTitleNext"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePrev()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/String;

    const-string v4, "getTitlePrev"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasMedia()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hasMedia"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 419
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hasNext"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 424
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hasPrevious"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 356
    invoke-virtual {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isPlaying"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public isShuffling()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 441
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isShuffling"

    move-object v0, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "noVideo"    # Z

    .prologue
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;IZ)V

    .line 252
    return-void
.end method

.method public load(Ljava/util/List;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;IZ)V

    .line 246
    return-void
.end method

.method public load(Ljava/util/List;IZ)V
    .locals 10
    .param p2, "position"    # I
    .param p3, "noVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 255
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "load"

    .line 256
    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Ljava/util/List;

    aput-object v0, v5, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v9

    .line 257
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v9

    move-object v0, p0

    .line 255
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public moveItem(II)V
    .locals 9
    .param p1, "positionStart"    # I
    .param p2, "positionEnd"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 273
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "moveItem"

    .line 274
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v8

    .line 275
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    move-object v0, p0

    .line 273
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method public next()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const-string v4, "next"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const-string v4, "pause"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V

    .line 363
    return-void
.end method

.method public play()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const-string v4, "play"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V

    .line 369
    return-void
.end method

.method public playIndex(I)V
    .locals 8
    .param p1, "i"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 313
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "playIndex"

    .line 314
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 315
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    .line 313
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V

    .line 317
    return-void
.end method

.method public previous()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const-string v4, "previous"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public remove(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 279
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "remove"

    .line 280
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 281
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    .line 279
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public removeAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V
    .locals 1
    .param p1, "ap"    # Lorg/videolan/vlc/interfaces/IAudioPlayer;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioPlayer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public removeLocation(Ljava/lang/String;)V
    .locals 8
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 285
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "removeLocation"

    .line 286
    new-array v5, v6, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v5, v7

    .line 287
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    move-object v0, p0

    .line 285
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public setRepeatType(Lorg/videolan/vlc/audio/RepeatType;)V
    .locals 8
    .param p1, "t"    # Lorg/videolan/vlc/audio/RepeatType;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 434
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "setRepeatType"

    .line 435
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 436
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    .line 434
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public setTime(J)V
    .locals 8
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 412
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "setTime"

    .line 413
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 414
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    .line 412
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public showWithoutParse(I)V
    .locals 8
    .param p1, "u"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 306
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x0

    const-string v4, "showWithoutParse"

    .line 307
    new-array v5, v6, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v5, v7

    .line 308
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    move-object v0, p0

    .line 306
    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V

    .line 310
    return-void
.end method

.method public shuffle()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const-string v4, "shuffle"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method

.method public stop()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    const-class v2, Ljava/lang/Void;

    const-string v4, "stop"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/videolan/vlc/audio/AudioServiceController;->remoteProcedureCall(Lorg/videolan/vlc/interfaces/IAudioService;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-direct {p0}, Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V

    .line 303
    return-void
.end method

.method public unbindAudioService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 152
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "unbindAudioService() with null Context. Ooops"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 157
    sget-boolean v1, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    sput-boolean v1, Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/IAudioService;->removeAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 166
    iput-object v3, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;

    .line 167
    iput-object v3, p0, Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "remote procedure call failed: removeAudioCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
