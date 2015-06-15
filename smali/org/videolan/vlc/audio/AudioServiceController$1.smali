.class Lorg/videolan/vlc/audio/AudioServiceController$1;
.super Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;
.source "AudioServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/audio/AudioServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/audio/AudioServiceController;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/audio/AudioServiceController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/audio/AudioServiceController$1;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 52
    invoke-direct {p0}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController$1;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    # invokes: Lorg/videolan/vlc/audio/AudioServiceController;->updateAudioPlayer()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->access$0(Lorg/videolan/vlc/audio/AudioServiceController;)V

    .line 56
    return-void
.end method

.method public updateProgress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioServiceController$1;->this$0:Lorg/videolan/vlc/audio/AudioServiceController;

    # invokes: Lorg/videolan/vlc/audio/AudioServiceController;->updateProgressAudioPlayer()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->access$1(Lorg/videolan/vlc/audio/AudioServiceController;)V

    .line 61
    return-void
.end method
