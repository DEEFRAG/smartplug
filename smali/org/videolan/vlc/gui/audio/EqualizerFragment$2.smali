.class Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;
.super Ljava/lang/Object;
.source "EqualizerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/EqualizerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    .line 206
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
    .line 217
    if-nez p3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x14

    int-to-float v2, v2

    aput v2, v0, v1

    .line 221
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$2(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$2;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setEqualizer([F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 213
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 209
    return-void
.end method
