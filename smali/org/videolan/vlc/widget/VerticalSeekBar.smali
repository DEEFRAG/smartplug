.class public Lorg/videolan/vlc/widget/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# static fields
.field private static THUMB_SLOP:F


# instance fields
.field private mIsMovingThumb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/high16 v0, 0x41c80000    # 25.0f

    sput v0, Lorg/videolan/vlc/widget/VerticalSeekBar;->THUMB_SLOP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/widget/VerticalSeekBar;->mIsMovingThumb:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/widget/VerticalSeekBar;->mIsMovingThumb:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/widget/VerticalSeekBar;->mIsMovingThumb:Z

    .line 40
    return-void
.end method

.method private isWithinThumb(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getProgress()I

    move-result v5

    int-to-float v3, v5

    .line 73
    .local v3, "progress":F
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v0, "density":F
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 75
    .local v1, "height":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 76
    .local v4, "y":F
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getMax()I

    move-result v5

    int-to-float v2, v5

    .line 77
    .local v2, "max":F
    sget v5, Lorg/videolan/vlc/widget/VerticalSeekBar;->THUMB_SLOP:F

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    .line 78
    sget v5, Lorg/videolan/vlc/widget/VerticalSeekBar;->THUMB_SLOP:F

    mul-float/2addr v5, v0

    sub-float v5, v4, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    .line 79
    const/4 v5, 0x1

    .line 81
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 60
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 54
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 48
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/videolan/vlc/widget/VerticalSeekBar;->isWithinThumb(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    iput-boolean v4, p0, Lorg/videolan/vlc/widget/VerticalSeekBar;->mIsMovingThumb:Z

    .line 97
    const/4 v0, 0x1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    iget-boolean v3, p0, Lorg/videolan/vlc/widget/VerticalSeekBar;->mIsMovingThumb:Z

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getMax()I

    move-result v1

    .line 103
    .local v1, "max":I
    int-to-float v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/widget/VerticalSeekBar;->setProgress(I)V

    .line 104
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2, v2}, Lorg/videolan/vlc/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 105
    const/4 v0, 0x1

    .line 107
    goto :goto_0

    .line 110
    .end local v1    # "max":I
    :pswitch_2
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 111
    iput-boolean v2, p0, Lorg/videolan/vlc/widget/VerticalSeekBar;->mIsMovingThumb:Z

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 68
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/videolan/vlc/widget/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
