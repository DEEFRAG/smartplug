.class Lorg/videolan/vlc/gui/expandable/SpeedSelector$1;
.super Ljava/lang/Object;
.source "SpeedSelector.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector$1;->this$0:Lorg/videolan/vlc/gui/expandable/SpeedSelector;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 69
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    int-to-double v3, p2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 70
    .local v0, "rate":F
    iget-object v1, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector$1;->this$0:Lorg/videolan/vlc/gui/expandable/SpeedSelector;

    invoke-static {v0}, Lorg/videolan/vlc/util/Strings;->formatRateString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->setText(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/LibVLC;->setRate(F)V

    .line 72
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 76
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 80
    return-void
.end method
