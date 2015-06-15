.class Lorg/videolan/vlc/audio/AudioServiceController$2;
.super Ljava/lang/Object;
.source "AudioServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/audio/AudioServiceController;->bindAudioService(Landroid/content/Context;Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/audio/AudioServiceController;

.field private final synthetic val$connectionListerner:Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

.field private final synthetic val$enableHS:Z


# direct methods
.method constructor <init>(Lorg/videolan/vlc/audio/AudioServiceController;ZLorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    iput-boolean p2, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$enableHS:Z

    iput-object p3, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$connectionListerner:Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 114
    # getter for: Lorg/videolan/vlc/audio/AudioServiceController;->mIsBound:Z
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->access$4()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "Service Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-static {p2}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioService;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->access$2(Lorg/videolan/vlc/audio/AudioServiceController;Lorg/videolan/vlc/interfaces/IAudioService;)V

    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    # getter for: Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->access$5(Lorg/videolan/vlc/audio/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioService;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    # getter for: Lorg/videolan/vlc/audio/AudioServiceController;->mCallback:Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioServiceController;->access$6(Lorg/videolan/vlc/audio/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/IAudioService;->addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 122
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    # getter for: Lorg/videolan/vlc/audio/AudioServiceController;->mAudioServiceBinder:Lorg/videolan/vlc/interfaces/IAudioService;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->access$5(Lorg/videolan/vlc/audio/AudioServiceController;)Lorg/videolan/vlc/interfaces/IAudioService;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$enableHS:Z

    invoke-interface {v1, v2}, Lorg/videolan/vlc/interfaces/IAudioService;->detectHeadset(Z)V

    .line 123
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$connectionListerner:Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$connectionListerner:Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

    invoke-interface {v1}, Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;->onConnectionSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    # invokes: Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioServiceController;->access$0(Lorg/videolan/vlc/audio/AudioServiceController;)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VLC/AudioServiceContoller"

    const-string v2, "remote procedure call failed: addAudioCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$connectionListerner:Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->val$connectionListerner:Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;

    invoke-interface {v1}, Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;->onConnectionFailed()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    const-string v0, "VLC/AudioServiceContoller"

    const-string v1, "Service Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController$2;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/audio/AudioServiceController;->access$2(Lorg/videolan/vlc/audio/AudioServiceController;Lorg/videolan/vlc/interfaces/IAudioService;)V

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->access$3(Z)V

    .line 110
    return-void
.end method
