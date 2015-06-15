.class Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;
.super Ljava/lang/Object;
.source "EqualizerFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/OnEqualizerBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/audio/EqualizerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BandListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/audio/EqualizerFragment;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 229
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput p2, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->index:I

    .line 231
    return-void
.end method


# virtual methods
.method public onProgressChanged(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 235
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    iget v1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->index:I

    aput p1, v0, v1

    .line 236
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    # getter for: Lorg/videolan/vlc/gui/audio/EqualizerFragment;->button:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->access$2(Lorg/videolan/vlc/gui/audio/EqualizerFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$BandListener;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v1, v1, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setEqualizer([F)V

    .line 238
    :cond_0
    return-void
.end method
