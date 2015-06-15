.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->startPlayback()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 616
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$19;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->pause()V

    .line 619
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_0
    return-void
.end method
