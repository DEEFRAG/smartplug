.class Lorg/videolan/vlc/gui/expandable/SpeedSelector$2;
.super Ljava/lang/Object;
.source "SpeedSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/expandable/SpeedSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/expandable/SpeedSelector;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/expandable/SpeedSelector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector$2;->this$0:Lorg/videolan/vlc/gui/expandable/SpeedSelector;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector$2;->this$0:Lorg/videolan/vlc/gui/expandable/SpeedSelector;

    # getter for: Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekbar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->access$0(Lorg/videolan/vlc/gui/expandable/SpeedSelector;)Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 87
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->setRate(F)V

    .line 88
    return-void
.end method
