.class Lorg/videolan/vlc/gui/audio/AudioPlayer$3;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSwitched(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 563
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 564
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->previous()V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 566
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$3;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->next()V

    goto :goto_0
.end method

.method public onMediaSwitching()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public onTouchClick()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method
