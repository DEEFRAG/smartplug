.class public Lorg/videolan/vlc/gui/expandable/SpeedSelector;
.super Lorg/videolan/vlc/widget/ExpandableLayout;
.source "SpeedSelector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SpeedSelector"


# instance fields
.field private mResetListener:Landroid/view/View$OnClickListener;

.field private mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekbar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/widget/ExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v3, Lorg/videolan/vlc/gui/expandable/SpeedSelector$1;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/expandable/SpeedSelector$1;-><init>(Lorg/videolan/vlc/gui/expandable/SpeedSelector;)V

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 83
    new-instance v3, Lorg/videolan/vlc/gui/expandable/SpeedSelector$2;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/expandable/SpeedSelector$2;-><init>(Lorg/videolan/vlc/gui/expandable/SpeedSelector;)V

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mResetListener:Landroid/view/View$OnClickListener;

    .line 43
    const v3, 0x7f0c0060

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->setTitle(I)V

    .line 44
    const v3, 0x7f010085

    invoke-static {p1, v3}, Lorg/videolan/vlc/util/Util;->getResourceFromAttribute(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->setIcon(I)V

    .line 45
    const v3, 0x7f03006e

    invoke-virtual {p0, p1, v3}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->setContent(Landroid/content/Context;I)V

    .line 47
    const v3, 0x7f0701e3

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekbar:Landroid/widget/SeekBar;

    .line 48
    const v3, 0x7f0701e5

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 50
    .local v2, "resetButton":Landroid/widget/Button;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    .local v1, "rate":F
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    .line 55
    .local v0, "libVLC":Lorg/videolan/libvlc/LibVLC;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getRate()F

    move-result v1

    .line 59
    .end local v0    # "libVLC":Lorg/videolan/libvlc/LibVLC;
    :cond_0
    invoke-static {v1}, Lorg/videolan/vlc/util/Strings;->formatRateString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->setText(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekbar:Landroid/widget/SeekBar;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object v3, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mResetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/expandable/SpeedSelector;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/videolan/vlc/gui/expandable/SpeedSelector;->mSeekbar:Landroid/widget/SeekBar;

    return-object v0
.end method
