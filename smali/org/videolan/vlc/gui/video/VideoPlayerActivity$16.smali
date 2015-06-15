.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mUiVisibility:I
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$46(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoWidth:I
    invoke-static {v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$47(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoHeight:I
    invoke-static {v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$48(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleWidth:I
    invoke-static {v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$49(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mVideoVisibleHeight:I
    invoke-static {v4}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$50(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarNum:I
    invoke-static {v5}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$51(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v5

    iget-object v6, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mSarDen:I
    invoke-static {v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$52(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setSurfaceSize(IIIIII)V

    .line 298
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mShowing:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$53(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$16;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$54(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V

    goto :goto_0
.end method
