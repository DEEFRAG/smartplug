.class public Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "ArcTranslateAnimation.java"


# instance fields
.field private mControl:Landroid/graphics/PointF;

.field private mEnd:Landroid/graphics/PointF;

.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mStart:Landroid/graphics/PointF;

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXType:I

    .line 11
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXType:I

    .line 13
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYType:I

    .line 14
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYType:I

    .line 16
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXValue:F

    .line 17
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXValue:F

    .line 19
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYValue:F

    .line 20
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYValue:F

    .line 45
    iput p1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXValue:F

    .line 46
    iput p2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXValue:F

    .line 47
    iput p3, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYValue:F

    .line 48
    iput p4, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYValue:F

    .line 50
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXType:I

    .line 51
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXType:I

    .line 52
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYType:I

    .line 53
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYType:I

    .line 54
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F
    .param p5, "fromYType"    # I
    .param p6, "fromYValue"    # F
    .param p7, "toYType"    # I
    .param p8, "toYValue"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXType:I

    .line 11
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXType:I

    .line 13
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYType:I

    .line 14
    iput v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYType:I

    .line 16
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXValue:F

    .line 17
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXValue:F

    .line 19
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYValue:F

    .line 20
    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYValue:F

    .line 96
    iput p2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXValue:F

    .line 97
    iput p4, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXValue:F

    .line 98
    iput p6, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYValue:F

    .line 99
    iput p8, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYValue:F

    .line 101
    iput p1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXType:I

    .line 102
    iput p3, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXType:I

    .line 103
    iput p5, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYType:I

    .line 104
    iput p7, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYType:I

    .line 105
    return-void
.end method

.method private calcBezier(FFFF)J
    .locals 7
    .param p1, "interpolatedTime"    # F
    .param p2, "p0"    # F
    .param p3, "p1"    # F
    .param p4, "p2"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 150
    sub-float v0, v6, p1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    .line 151
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v3, v6, p1

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    mul-float/2addr v2, p3

    float-to-double v2, v2

    .line 150
    add-double/2addr v0, v2

    .line 152
    float-to-double v2, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p4

    mul-double/2addr v2, v4

    .line 150
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mControl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mEnd:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->calcBezier(FFFF)J

    move-result-wide v2

    long-to-float v0, v2

    .line 110
    .local v0, "dx":F
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mControl:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mEnd:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->calcBezier(FFFF)J

    move-result-wide v2

    long-to-float v1, v2

    .line 112
    .local v1, "dy":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 113
    return-void
.end method

.method public initialize(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 119
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXDelta:F

    .line 120
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXType:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXDelta:F

    .line 121
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYDelta:F

    .line 122
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYType:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYDelta:F

    .line 124
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXDelta:F

    iget v2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromYDelta:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mStart:Landroid/graphics/PointF;

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToXDelta:F

    iget v2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYDelta:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mEnd:Landroid/graphics/PointF;

    .line 126
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mFromXDelta:F

    iget v2, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mToYDelta:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/ArcTranslateAnimation;->mControl:Landroid/graphics/PointF;

    .line 131
    return-void
.end method
