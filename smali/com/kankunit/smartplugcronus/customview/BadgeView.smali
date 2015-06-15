.class public Lcom/kankunit/smartplugcronus/customview/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# static fields
.field private static final DEFAULT_BADGE_COLOR:I

.field private static final DEFAULT_CORNER_RADIUS_DIP:I = 0x8

.field private static final DEFAULT_LR_PADDING_DIP:I = 0x5

.field private static final DEFAULT_MARGIN_DIP:I = 0x5

.field private static final DEFAULT_POSITION:I = 0x2

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_CENTER:I = 0x5

.field public static final POSITION_TOP_LEFT:I = 0x1

.field public static final POSITION_TOP_RIGHT:I = 0x2

.field private static fadeIn:Landroid/view/animation/Animation;

.field private static fadeOut:Landroid/view/animation/Animation;


# instance fields
.field private badgeBg:Landroid/graphics/drawable/ShapeDrawable;

.field private badgeColor:I

.field private badgeMarginH:I

.field private badgeMarginV:I

.field private badgePosition:I

.field private context:Landroid/content/Context;

.field private isShown:Z

.field private target:Landroid/view/View;

.field private targetTabIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "#CCFF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->DEFAULT_BADGE_COLOR:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 97
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "target"    # Landroid/view/View;
    .param p5, "tabIndex"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-direct {p0, p1, p4, p5}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->init(Landroid/content/Context;Landroid/view/View;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;

    .prologue
    .line 79
    const/4 v2, 0x0

    const v3, 0x1010084

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/TabWidget;
    .param p3, "index"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 94
    return-void
.end method

.method private applyLayoutParams()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 337
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgePosition:I

    packed-switch v1, :pswitch_data_0

    .line 364
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-void

    .line 341
    :pswitch_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 342
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 345
    :pswitch_1
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 349
    :pswitch_2
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 350
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 353
    :pswitch_3
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 354
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 357
    :pswitch_4
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 358
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private applyTo(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 143
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 144
    .local v4, "parent":Landroid/view/ViewParent;
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "container":Landroid/widget/FrameLayout;
    instance-of v5, p1, Landroid/widget/TabWidget;

    if-eqz v5, :cond_0

    .line 149
    check-cast p1, Landroid/widget/TabWidget;

    .end local p1    # "target":Landroid/view/View;
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->targetTabIndex:I

    invoke-virtual {p1, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object p1

    .line 150
    .restart local p1    # "target":Landroid/view/View;
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->target:Landroid/view/View;

    move-object v5, p1

    .line 152
    check-cast v5, Landroid/view/ViewGroup;

    .line 153
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 152
    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setVisibility(I)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 176
    :goto_0
    return-void

    :cond_0
    move-object v1, v4

    .line 161
    check-cast v1, Landroid/view/ViewGroup;

    .line 162
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 164
    .local v2, "index":I
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setVisibility(I)V

    .line 170
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method private dipToPixels(I)I
    .locals 5
    .param p1, "dip"    # I

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 462
    .local v1, "r":Landroid/content/res/Resources;
    const/4 v2, 0x1

    int-to-float v3, p1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 463
    .local v0, "px":F
    float-to-int v2, v0

    return v2
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 324
    invoke-direct {p0, v4}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->dipToPixels(I)I

    move-result v2

    .line 325
    .local v2, "r":I
    new-array v1, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x1

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x3

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x4

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x5

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x6

    int-to-float v5, v2

    aput v5, v1, v4

    const/4 v4, 0x7

    int-to-float v5, v2

    aput v5, v1, v4

    .line 327
    .local v1, "outerR":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 328
    .local v3, "rr":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 329
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    return-object v0
.end method

.method private hide(ZLandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 274
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setVisibility(I)V

    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0, p2}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->isShown:Z

    .line 279
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "tabIndex"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->context:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->target:Landroid/view/View;

    .line 109
    iput p3, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->targetTabIndex:I

    .line 112
    const/4 v1, 0x2

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgePosition:I

    .line 113
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->dipToPixels(I)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    .line 114
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    .line 115
    sget v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->DEFAULT_BADGE_COLOR:I

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeColor:I

    .line 117
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->dipToPixels(I)I

    move-result v0

    .line 119
    .local v0, "paddingPixels":I
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setPadding(IIII)V

    .line 120
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setTextColor(I)V

    .line 122
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    .line 123
    sget-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 124
    sget-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 126
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    .line 127
    sget-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    sget-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 130
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->isShown:Z

    .line 132
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->target:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->target:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->applyTo(Landroid/view/View;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->show()V

    goto :goto_0
.end method

.method private show(ZLandroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->applyLayoutParams()V

    .line 266
    if-eqz p1, :cond_2

    .line 267
    invoke-virtual {p0, p2}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 269
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setVisibility(I)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->isShown:Z

    .line 271
    return-void
.end method

.method private toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "animIn"    # Landroid/view/animation/Animation;
    .param p3, "animOut"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->isShown:Z

    if-eqz v2, :cond_1

    .line 283
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 287
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 283
    goto :goto_0

    .line 285
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public decrement(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 319
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->increment(I)I

    move-result v0

    return v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeColor:I

    return v0
.end method

.method public getBadgePosition()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgePosition:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->target:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 210
    return-void
.end method

.method public hide(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 228
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 218
    sget-object v0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->hide(ZLandroid/view/animation/Animation;)V

    .line 219
    return-void
.end method

.method public increment(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 298
    .local v2, "txt":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 300
    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    .local v1, "i":I
    :goto_0
    add-int/2addr v1, p1

    .line 308
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return v1

    .line 301
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 304
    .restart local v1    # "i":I
    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->isShown:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .locals 1
    .param p1, "badgeColor"    # I

    .prologue
    .line 456
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeColor:I

    .line 457
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeBg:Landroid/graphics/drawable/ShapeDrawable;

    .line 458
    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0
    .param p1, "badgeMargin"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    .line 428
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    .line 429
    return-void
.end method

.method public setBadgeMargin(II)V
    .locals 0
    .param p1, "horizontal"    # I
    .param p2, "vertical"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginH:I

    .line 439
    iput p2, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgeMarginV:I

    .line 440
    return-void
.end method

.method public setBadgePosition(I)V
    .locals 0
    .param p1, "layoutPosition"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->badgePosition:I

    .line 403
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 184
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 202
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 192
    sget-object v0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->show(ZLandroid/view/animation/Animation;)V

    .line 193
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 236
    return-void
.end method

.method public toggle(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animIn"    # Landroid/view/animation/Animation;
    .param p2, "animOut"    # Landroid/view/animation/Animation;

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 255
    return-void
.end method

.method public toggle(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 244
    sget-object v0, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeIn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/kankunit/smartplugcronus/customview/BadgeView;->fadeOut:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lcom/kankunit/smartplugcronus/customview/BadgeView;->toggle(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 245
    return-void
.end method
