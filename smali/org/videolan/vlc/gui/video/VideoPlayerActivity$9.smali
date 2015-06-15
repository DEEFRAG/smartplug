.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1697
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mIsLocked:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$14(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$15(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 1699
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->unlockScreen()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$16(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1704
    :goto_0
    return-void

    .line 1701
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$15(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 1702
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$9;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->lockScreen()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$17(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    goto :goto_0
.end method
