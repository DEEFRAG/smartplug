.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$18;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lorg/videolan/vlc/audio/AudioServiceController$AudioServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$18;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$18;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$55(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    return-void
.end method

.method public onConnectionSuccess()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$18;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$55(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 570
    return-void
.end method
