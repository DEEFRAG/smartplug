.class public Lorg/videolan/vlc/widget/AnimatedCoverView;
.super Landroid/view/View;
.source "AnimatedCoverView.java"


# static fields
.field private static final ANIMATION_MOVE_1:I = 0x0

.field private static final ANIMATION_MOVE_2:I = 0x1


# instance fields
.field private mCurrentAnim:Landroid/view/animation/TranslateAnimation;

.field private mCurrentMove:I

.field private mDst:Landroid/graphics/Rect;

.field private mImage:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mScaledImageHeight:I

.field private mScaledImageWidth:I

.field private mSrc:Landroid/graphics/Rect;

.field mStartPos:[F

.field private mTrans:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mSrc:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mDst:Landroid/graphics/Rect;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    .line 47
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mTrans:Landroid/view/animation/Transformation;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mPaint:Landroid/graphics/Paint;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mSrc:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mDst:Landroid/graphics/Rect;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    .line 47
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mTrans:Landroid/view/animation/Transformation;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mPaint:Landroid/graphics/Paint;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mSrc:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mDst:Landroid/graphics/Rect;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    .line 47
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mTrans:Landroid/view/animation/Transformation;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mPaint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method

.method private switchAnimation(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 101
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v4, v6

    .line 102
    .local v1, "ARview":F
    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v4, v6

    .line 104
    .local v0, "ARimage":F
    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    .line 105
    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageWidth:I

    .line 106
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    .line 113
    :goto_0
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    .line 115
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    .line 116
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    int-to-float v7, v4

    .line 117
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    if-nez v4, :cond_5

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageWidth:I

    sub-int/2addr v4, v8

    :goto_3
    int-to-float v8, v4

    .line 118
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    if-nez v4, :cond_6

    move v4, v5

    :goto_4
    int-to-float v4, v4

    .line 119
    iget v9, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentMove:I

    if-nez v9, :cond_0

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    sub-int/2addr v5, v9

    :cond_0
    int-to-float v5, v5

    invoke-direct {v6, v7, v8, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 115
    iput-object v6, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    .line 121
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_7

    .line 122
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageWidth:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x3c

    .line 123
    .local v2, "animationDuration":I
    :goto_5
    const/16 v4, 0xa

    if-gt v2, v4, :cond_1

    .line 124
    const/16 v2, 0xa

    .line 125
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 126
    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 127
    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    iget-object v5, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 128
    return-void

    .line 109
    .end local v2    # "animationDuration":I
    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageWidth:I

    .line 110
    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    goto/16 :goto_0

    :cond_3
    move v4, v5

    .line 113
    goto :goto_1

    .line 116
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageWidth:I

    sub-int/2addr v4, v7

    goto :goto_2

    :cond_5
    move v4, v5

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    sub-int/2addr v4, v9

    goto :goto_4

    .line 122
    :cond_7
    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x3c

    goto :goto_5
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lorg/videolan/vlc/widget/AnimatedCoverView;->switchAnimation(Landroid/graphics/Canvas;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 81
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    aput v5, v0, v4

    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    aput v5, v0, v6

    .line 82
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 84
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 85
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mDst:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    aget v1, v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    aget v2, v2, v6

    float-to-int v2, v2

    .line 86
    iget-object v3, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    aget v3, v3, v4

    float-to-int v3, v3

    iget v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mStartPos:[F

    aget v4, v4, v6

    float-to-int v4, v4

    iget v5, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mScaledImageHeight:I

    add-int/2addr v4, v5

    .line 85
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 88
    iget-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mDst:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AnimatedCoverView;->invalidate()V

    .line 94
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mCurrentAnim:Landroid/view/animation/TranslateAnimation;

    .line 70
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/videolan/vlc/widget/AnimatedCoverView;->mImage:Landroid/graphics/Bitmap;

    .line 132
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/AnimatedCoverView;->invalidate()V

    .line 133
    return-void
.end method
