.class Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;
.super Ljava/lang/Object;
.source "EqualizerFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/audio/EqualizerFragment;->fillViews()V
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v1, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->libVlc:Lorg/videolan/libvlc/LibVLC;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/EqualizerFragment$3;->this$0:Lorg/videolan/vlc/gui/audio/EqualizerFragment;

    iget-object v0, v0, Lorg/videolan/vlc/gui/audio/EqualizerFragment;->equalizer:[F

    :goto_1
    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/LibVLC;->setEqualizer([F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
