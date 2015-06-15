.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->handleHardwareAccelerationError()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1122
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$57(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 1123
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getHardwareAcceleration()I

    move-result v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$58(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V

    .line 1124
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setHardwareAcceleration(I)V

    .line 1125
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSubtitlesSurface:Landroid/view/SurfaceView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$59(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$23;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->loadMedia()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$56(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1127
    return-void
.end method
