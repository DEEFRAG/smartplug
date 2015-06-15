.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->changeAudioFocus(Z)I
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 915
    packed-switch p1, :pswitch_data_0

    .line 930
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 920
    :pswitch_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->pause()V

    goto :goto_0

    .line 926
    :pswitch_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$20;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    # getter for: Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$6(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->play()V

    goto :goto_0

    .line 915
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
