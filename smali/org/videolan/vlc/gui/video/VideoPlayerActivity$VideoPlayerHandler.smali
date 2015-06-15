.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;
.super Lorg/videolan/vlc/util/WeakHandler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayerHandler"
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
    .line 1037
    invoke-direct {p0, p1}, Lorg/videolan/vlc/util/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 1038
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1042
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1043
    .local v0, "activity":Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
    if-nez v0, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1048
    :pswitch_0
    const/4 v2, 0x0

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideOverlay(Z)V
    invoke-static {v0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$37(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    goto :goto_0

    .line 1051
    :pswitch_1
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setOverlayProgress()I
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$7(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v1

    .line 1052
    .local v1, "pos":I
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->canShowProgress()Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$38(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1054
    rem-int/lit16 v2, v1, 0x3e8

    rsub-int v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$VideoPlayerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1058
    .end local v1    # "pos":I
    :pswitch_2
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeSurfaceSize()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$39(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 1061
    :pswitch_3
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->fadeOutInfo()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$40(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 1064
    :pswitch_4
    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->startPlayback()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$41(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0

    .line 1067
    :pswitch_5
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->finish()V

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
