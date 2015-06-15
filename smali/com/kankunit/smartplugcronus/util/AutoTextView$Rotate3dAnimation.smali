.class Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "AutoTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/AutoTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rotate3dAnimation"
.end annotation


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mFromDegrees:F

.field private final mToDegrees:F

.field private final mTurnIn:Z

.field private final mTurnUp:Z

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/AutoTextView;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/util/AutoTextView;FFZZ)V
    .locals 0
    .param p2, "fromDegrees"    # F
    .param p3, "toDegrees"    # F
    .param p4, "turnIn"    # Z
    .param p5, "turnUp"    # Z

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->this$0:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 109
    iput p2, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mFromDegrees:F

    .line 110
    iput p3, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mToDegrees:F

    .line 111
    iput-boolean p4, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mTurnIn:Z

    .line 112
    iput-boolean p5, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mTurnUp:Z

    .line 113
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v9, 0x0

    .line 125
    iget v5, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mFromDegrees:F

    .line 126
    .local v5, "fromDegrees":F
    iget v7, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, p1

    add-float v3, v5, v7

    .line 128
    .local v3, "degrees":F
    iget v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCenterX:F

    .line 129
    .local v1, "centerX":F
    iget v2, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCenterY:F

    .line 130
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 131
    .local v0, "camera":Landroid/graphics/Camera;
    iget-boolean v7, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mTurnUp:Z

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 133
    .local v4, "derection":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 135
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 136
    iget-boolean v7, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mTurnIn:Z

    if-eqz v7, :cond_1

    .line 137
    int-to-float v7, v4

    iget v8, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCenterY:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, p1, v8

    mul-float/2addr v7, v8

    invoke-virtual {v0, v9, v7, v9}, Landroid/graphics/Camera;->translate(FFF)V

    .line 141
    :goto_1
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 142
    invoke-virtual {v0, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 145
    neg-float v7, v1

    neg-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 146
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    return-void

    .line 131
    .end local v4    # "derection":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0

    .line 139
    .restart local v4    # "derection":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    int-to-float v7, v4

    iget v8, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCenterY:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, p1

    invoke-virtual {v0, v9, v7, v9}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 118
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->this$0:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCenterY:F

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->this$0:Lcom/kankunit/smartplugcronus/util/AutoTextView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->mCenterX:F

    .line 121
    return-void
.end method
