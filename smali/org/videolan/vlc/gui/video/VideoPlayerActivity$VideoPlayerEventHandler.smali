.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/util/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/video/VideoPlayerActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 960
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 964
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 965
    .local v0, "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    if-nez v0, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSwitchingView:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$23(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 969
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1023
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "Event not handled (0x%x)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "event"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_2
    :goto_1
    :sswitch_0
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateOverlayPausePlay()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$36(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 971
    :sswitch_1
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaParsedChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateNavStatus()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$24(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 973
    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$25(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getVideoTracksCount()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 974
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "No video track, open in audio mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->switchToAudioMode()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$26(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_1

    .line 979
    :sswitch_2
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerPlaying"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->stopLoadingAnimation()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$27(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 981
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 984
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTrackLists(Z)V
    invoke-static {v0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$28(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 985
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setESTracks()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$29(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 986
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeAudioFocus(Z)I
    invoke-static {v0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$30(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)I

    .line 987
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateNavStatus()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$24(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_1

    .line 990
    :sswitch_3
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerPaused"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 993
    :sswitch_4
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeAudioFocus(Z)I
    invoke-static {v0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$30(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)I

    goto :goto_1

    .line 997
    :sswitch_5
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerEndReached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeAudioFocus(Z)I
    invoke-static {v0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$30(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)I

    .line 999
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->endReached()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$31(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_1

    .line 1002
    :sswitch_6
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->updateNavStatus()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$24(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1003
    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHasMenu:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$25(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1004
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleVout(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$32(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Landroid/os/Message;)V

    goto :goto_1

    .line 1007
    :sswitch_7
    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$5(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1008
    invoke-static {v0, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$33(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    goto :goto_1

    .line 1012
    :sswitch_8
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "MediaPlayerEncounteredError"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->encounteredError()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$34(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto/16 :goto_1

    .line 1016
    :sswitch_9
    const-string v1, "VLC/VideoPlayerActivity"

    const-string v2, "HardwareAccelerationError"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleHardwareAccelerationError()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$35(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto/16 :goto_1

    .line 969
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x104 -> :sswitch_2
        0x105 -> :sswitch_3
        0x106 -> :sswitch_4
        0x109 -> :sswitch_5
        0x10a -> :sswitch_8
        0x10b -> :sswitch_0
        0x10c -> :sswitch_7
        0x112 -> :sswitch_6
        0x3000 -> :sswitch_9
    .end sparse-switch
.end method
