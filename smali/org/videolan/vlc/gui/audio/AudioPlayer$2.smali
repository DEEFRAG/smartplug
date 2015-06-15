.class Lorg/videolan/vlc/gui/audio/AudioPlayer$2;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSwitched(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 533
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 534
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->previous()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 536
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->next()V

    goto :goto_0
.end method

.method public onMediaSwitching()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public onTouchClick()V
    .locals 2

    .prologue
    .line 551
    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 552
    .local v0, "activity":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->slideUpOrDownAudioPlayer()V

    .line 553
    return-void
.end method

.method public onTouchDown()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # invokes: Lorg/videolan/vlc/gui/audio/AudioPlayer;->hideHedaderButtons()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$4(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    .line 542
    return-void
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$2;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # invokes: Lorg/videolan/vlc/gui/audio/AudioPlayer;->restoreHedaderButtonVisibilities()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$5(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V

    .line 547
    return-void
.end method
