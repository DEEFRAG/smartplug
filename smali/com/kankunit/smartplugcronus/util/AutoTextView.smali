.class public Lcom/kankunit/smartplugcronus/util/AutoTextView;
.super Landroid/widget/TextSwitcher;
.source "AutoTextView.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:F

.field private mInDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

.field private mInUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

.field private mOutDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

.field private mOutUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v1, Lcom/kankunit/smartplugcronus/R$styleable;->auto3d:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mHeight:F

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->init()V

    .line 45
    return-void
.end method

.method private createAnim(FFZZ)Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;
    .locals 6
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "turnIn"    # Z
    .param p4, "turnUp"    # Z

    .prologue
    .line 62
    new-instance v0, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;-><init>(Lcom/kankunit/smartplugcronus/util/AutoTextView;FFZZ)V

    .line 63
    .local v0, "rotation":Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->setDuration(J)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->setFillAfter(Z)V

    .line 65
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 50
    invoke-direct {p0, v4, v1, v3, v3}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->createAnim(FFZZ)Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    .line 51
    invoke-direct {p0, v1, v5, v2, v3}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->createAnim(FFZZ)Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    .line 52
    invoke-direct {p0, v5, v1, v3, v2}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->createAnim(FFZZ)Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    .line 53
    invoke-direct {p0, v1, v4, v2, v2}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->createAnim(FFZZ)Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 59
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "t":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mHeight:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    return-object v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    if-eq v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutUp:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 97
    :cond_1
    return-void
.end method

.method public previous()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mInDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    if-eq v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AutoTextView;->mOutDown:Lcom/kankunit/smartplugcronus/util/AutoTextView$Rotate3dAnimation;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/util/AutoTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 88
    :cond_1
    return-void
.end method
