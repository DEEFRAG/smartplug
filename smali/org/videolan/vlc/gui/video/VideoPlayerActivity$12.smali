.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1765
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1766
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is RGBX_8888"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;->attachSurface(Landroid/view/Surface;Lorg/videolan/libvlc/IVideoPlayer;)V

    .line 1775
    :cond_0
    return-void

    .line 1767
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1768
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is RGB_565"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1769
    :cond_2
    const v0, 0x32315659

    if-ne p2, v0, :cond_3

    .line 1770
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is YV12"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1772
    :cond_3
    const-string v0, "VLC/VideoPlayerActivity"

    const-string v1, "Pixel format is other/unknown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1779
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1783
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$12;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->detachSurface()V

    .line 1785
    :cond_0
    return-void
.end method
