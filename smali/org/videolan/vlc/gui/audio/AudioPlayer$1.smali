.class Lorg/videolan/vlc/gui/audio/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/AudioPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "sb"    # Landroid/widget/SeekBar;
    .param p2, "prog"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 426
    if-eqz p3, :cond_0

    .line 427
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/audio/AudioServiceController;->setTime(J)V

    .line 428
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mTime:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$1(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mShowRemainingTime:Z
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$2(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$0(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioServiceController;->getLength()I

    move-result v0

    sub-int v0, p2, v0

    :goto_0
    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioPlayer$1;->this$0:Lorg/videolan/vlc/gui/audio/AudioPlayer;

    # getter for: Lorg/videolan/vlc/gui/audio/AudioPlayer;->mHeaderTime:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/AudioPlayer;->access$3(Lorg/videolan/vlc/gui/audio/AudioPlayer;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/Strings;->millisToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_0
    return-void

    :cond_1
    move v0, p2

    .line 428
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 422
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 416
    return-void
.end method
