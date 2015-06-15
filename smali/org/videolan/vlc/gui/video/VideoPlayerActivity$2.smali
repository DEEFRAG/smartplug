.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1516
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mCanSeek:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$5(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 1518
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->setOverlayProgress()I
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$7(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    .line 1519
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mTime:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$8(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    int-to-long v1, p2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$9(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;)V

    .line 1523
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1503
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 1504
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x36ee80

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay(I)V
    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$2(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)V

    .line 1505
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1509
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Z)V

    .line 1510
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->showOverlay()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1511
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$2;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # invokes: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->hideInfo()V
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$4(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1512
    return-void
.end method
