.class public Lcom/special/ResideMenu/ResideMenu;
.super Landroid/widget/FrameLayout;
.source "ResideMenu.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private animationListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

.field private canScale:Z

.field private disabledDirection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private ignoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isEdge:Z

.field private isOpened:Z

.field private iv_background:Landroid/widget/ImageView;

.field private iv_shadow:Landroid/widget/ImageView;

.field private lastRawX:F

.field private layout_left_menu:Landroid/widget/LinearLayout;

.field private layout_right_menu:Landroid/widget/LinearLayout;

.field private leftMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/special/ResideMenu/ResideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

.field private rightMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/special/ResideMenu/ResideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private scaleDirection:I

.field private shadow_AdjustScaleX:F

.field private shadow_AdjustScaleY:F

.field private sv_left_menu:Landroid/widget/LinearLayout;

.field private sv_menu:Landroid/widget/LinearLayout;

.field private sv_right_menu:Landroid/widget/LinearLayout;

.field private view_activity:Landroid/view/ViewGroup;

.field private view_decor:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 61
    iput-boolean v1, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    .line 62
    iput v1, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->disabledDirection:Ljava/util/List;

    .line 65
    iput-boolean v1, p0, Lcom/special/ResideMenu/ResideMenu;->isEdge:Z

    .line 337
    new-instance v0, Lcom/special/ResideMenu/ResideMenu$1;

    invoke-direct {v0, p0}, Lcom/special/ResideMenu/ResideMenu$1;-><init>(Lcom/special/ResideMenu/ResideMenu;)V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->animationListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 71
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->initViews(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/special/ResideMenu/ResideMenu;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    return v0
.end method

.method static synthetic access$1(Lcom/special/ResideMenu/ResideMenu;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/special/ResideMenu/ResideMenu;)Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    return-object v0
.end method

.method private buildMenuAnimation(Landroid/view/View;F)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 412
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 413
    .local v0, "alphaAnimation":Lcom/nineoldandroids/animation/AnimatorSet;
    new-array v1, v3, [Lcom/nineoldandroids/animation/Animator;

    .line 414
    const-string v2, "alpha"

    new-array v3, v3, [F

    aput p2, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 413
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 417
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 418
    return-object v0
.end method

.method private buildScaleDownAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "targetScaleX"    # F
    .param p3, "targetScaleY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 379
    .local v0, "scaleDown":Lcom/nineoldandroids/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    .line 380
    const-string v2, "scaleX"

    new-array v3, v5, [F

    aput p2, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 381
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput p3, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 379
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 384
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->activity:Landroid/app/Activity;

    .line 385
    const v2, 0x10a0006

    .line 384
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 386
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 387
    return-object v0
.end method

.method private buildScaleUpAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "targetScaleX"    # F
    .param p3, "targetScaleY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 400
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 401
    .local v0, "scaleUp":Lcom/nineoldandroids/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    .line 402
    const-string v2, "scaleX"

    new-array v3, v5, [F

    aput p2, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    .line 403
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput p3, v3, v4

    invoke-static {p1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 401
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 406
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 407
    return-object v0
.end method

.method private getTargetScale(F)F
    .locals 6
    .param p1, "currentRawX"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 488
    iget v4, p0, Lcom/special/ResideMenu/ResideMenu;->lastRawX:F

    sub-float v4, p1, v4

    invoke-virtual {p0}, Lcom/special/ResideMenu/ResideMenu;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v0, v4, v5

    .line 489
    .local v0, "scaleFloatX":F
    iget v4, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    neg-float v0, v0

    .line 491
    :cond_0
    iget-object v4, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getScaleX(Landroid/view/View;)F

    move-result v4

    sub-float v1, v4, v0

    .line 492
    .local v1, "targetScale":F
    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    move v1, v3

    .line 493
    :cond_1
    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    move v1, v2

    .line 494
    :cond_2
    return v1
.end method

.method private initValue(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/special/ResideMenu/ResideMenu;->activity:Landroid/app/Activity;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->rightMenuItems:Ljava/util/List;

    .line 104
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->gestureDetector:Landroid/view/GestureDetector;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->ignoredViews:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->view_decor:Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->view_decor:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    .line 108
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/special/ResideMenu/R$layout;->residemenu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    sget v1, Lcom/special/ResideMenu/R$id;->sv_left_menu:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->sv_left_menu:Landroid/widget/LinearLayout;

    .line 78
    sget v1, Lcom/special/ResideMenu/R$id;->sv_right_menu:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->sv_right_menu:Landroid/widget/LinearLayout;

    .line 79
    sget v1, Lcom/special/ResideMenu/R$id;->iv_shadow:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_0
    sget v1, Lcom/special/ResideMenu/R$id;->layout_left_menu:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->layout_left_menu:Landroid/widget/LinearLayout;

    .line 84
    sget v1, Lcom/special/ResideMenu/R$id;->layout_right_menu:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->layout_right_menu:Landroid/widget/LinearLayout;

    .line 85
    sget v1, Lcom/special/ResideMenu/R$id;->iv_background:I

    invoke-virtual {p0, v1}, Lcom/special/ResideMenu/ResideMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->iv_background:Landroid/widget/ImageView;

    .line 86
    return-void
.end method

.method private isInDisableDirection(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->disabledDirection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 456
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->ignoredViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 461
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 456
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 457
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private rebuildMenu()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->layout_left_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->layout_right_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->rightMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 201
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->layout_left_menu:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->layout_right_menu:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->rightMenuItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setScaleDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/special/ResideMenu/ResideMenu;->getScreenWidth()I

    move-result v2

    .line 311
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Lcom/special/ResideMenu/ResideMenu;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .line 313
    .local v1, "pivotY":F
    if-nez p1, :cond_0

    .line 314
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_left_menu:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    .line 315
    int-to-float v3, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v0, v3, v4

    .line 321
    .local v0, "pivotX":F
    :goto_0
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 322
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v3, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 323
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 324
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 325
    iput p1, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    .line 326
    return-void

    .line 317
    .end local v0    # "pivotX":F
    :cond_0
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_right_menu:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    .line 318
    int-to-float v3, v2

    const/high16 v4, -0x41000000    # -0.5f

    mul-float v0, v3, v4

    .restart local v0    # "pivotX":F
    goto :goto_0
.end method

.method private setScaleDirectionByRawX(F)V
    .locals 1
    .param p1, "currentRawX"    # F

    .prologue
    .line 481
    iget v0, p0, Lcom/special/ResideMenu/ResideMenu;->lastRawX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/special/ResideMenu/ResideMenu;->setScaleDirection(I)V

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/special/ResideMenu/ResideMenu;->setScaleDirection(I)V

    goto :goto_0
.end method

.method private setShadowAdjustScaleXByOrientation()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/special/ResideMenu/ResideMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 112
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 113
    const v1, 0x3d0b4396    # 0.034f

    iput v1, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleX:F

    .line 114
    const v1, 0x3df5c28f    # 0.12f

    iput v1, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleY:F

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    const v1, 0x3d75c28f    # 0.06f

    iput v1, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleX:F

    .line 117
    const v1, 0x3d8f5c29    # 0.07f

    iput v1, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleY:F

    goto :goto_0
.end method

.method private setViewPadding()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 248
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 245
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/special/ResideMenu/ResideMenu;->setPadding(IIII)V

    .line 249
    return-void
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->ignoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public addMenuItem(Lcom/special/ResideMenu/ResideMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lcom/special/ResideMenu/ResideMenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->layout_left_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public addMenuItem(Lcom/special/ResideMenu/ResideMenuItem;I)V
    .locals 1
    .param p1, "menuItem"    # Lcom/special/ResideMenu/ResideMenuItem;
    .param p2, "direction"    # I

    .prologue
    .line 160
    if-nez p2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->layout_left_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->rightMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->layout_right_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addMenuLayout(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->layout_left_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->initValue(Landroid/app/Activity;)V

    .line 95
    invoke-direct {p0}, Lcom/special/ResideMenu/ResideMenu;->setShadowAdjustScaleXByOrientation()V

    .line 96
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->view_decor:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 97
    invoke-direct {p0}, Lcom/special/ResideMenu/ResideMenu;->setViewPadding()V

    .line 98
    return-void
.end method

.method public clearIgnoredViewList()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->ignoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    return-void
.end method

.method public closeMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 289
    iput-boolean v5, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    .line 290
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v4, v4}, Lcom/special/ResideMenu/ResideMenu;->buildScaleUpAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v1

    .line 291
    .local v1, "scaleUp_activity":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v4}, Lcom/special/ResideMenu/ResideMenu;->buildScaleUpAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v2

    .line 292
    .local v2, "scaleUp_shadow":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/special/ResideMenu/ResideMenu;->buildMenuAnimation(Landroid/view/View;F)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    .line 293
    .local v0, "alpha_menu":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->animationListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 294
    new-array v3, v6, [Lcom/nineoldandroids/animation/Animator;

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 295
    new-array v3, v6, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v3, v5

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 296
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 297
    return-void
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/special/ResideMenu/ResideMenuItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getMenuItems(I)Ljava/util/List;
    .locals 1
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/special/ResideMenu/ResideMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->rightMenuItems:Ljava/util/List;

    goto :goto_0
.end method

.method public getMenuListener()Lcom/special/ResideMenu/ResideMenu$OnMenuListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 615
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/special/ResideMenu/ResideMenu;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 620
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    const-wide v7, 0x3fee666666666666L    # 0.95

    const/4 v3, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 499
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 500
    iget-object v4, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getScaleX(Landroid/view/View;)F

    move-result v0

    .line 501
    .local v0, "currentActivityScaleX":F
    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/special/ResideMenu/ResideMenu;->setScaleDirectionByRawX(F)V

    .line 504
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 574
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/special/ResideMenu/ResideMenu;->lastRawX:F

    .line 580
    .end local v0    # "currentActivityScaleX":F
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 506
    .restart local v0    # "currentActivityScaleX":F
    :pswitch_0
    iget-boolean v4, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    if-nez v4, :cond_5

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 508
    iput-boolean v3, p0, Lcom/special/ResideMenu/ResideMenu;->isEdge:Z

    .line 509
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 511
    :cond_4
    iput-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->isEdge:Z

    goto :goto_0

    .line 514
    :cond_5
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    iput-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_2

    .line 519
    :pswitch_1
    iget-boolean v3, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    if-nez v3, :cond_8

    .line 520
    iget-boolean v3, p0, Lcom/special/ResideMenu/ResideMenu;->isEdge:Z

    if-eqz v3, :cond_1

    .line 521
    iget-boolean v3, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    invoke-direct {p0, v3}, Lcom/special/ResideMenu/ResideMenu;->isInDisableDirection(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    float-to-double v3, v0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_7

    .line 524
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/special/ResideMenu/ResideMenu;->getTargetScale(F)F

    move-result v1

    .line 527
    .local v1, "targetScale":F
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 528
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 529
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleX:F

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 530
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleY:F

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 531
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    sub-float v3, v6, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 534
    .end local v1    # "targetScale":F
    :cond_8
    iget-boolean v3, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    invoke-direct {p0, v3}, Lcom/special/ResideMenu/ResideMenu;->isInDisableDirection(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 536
    float-to-double v3, v0

    cmpg-double v3, v3, v7

    if-gez v3, :cond_9

    .line 537
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/special/ResideMenu/ResideMenu;->getTargetScale(F)F

    move-result v1

    .line 540
    .restart local v1    # "targetScale":F
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 541
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 542
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleX:F

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 543
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleY:F

    add-float/2addr v3, v1

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 544
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    sub-float v3, v6, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 551
    .end local v1    # "targetScale":F
    :pswitch_2
    iget-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    if-nez v2, :cond_b

    .line 552
    iget-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->isEdge:Z

    if-eqz v2, :cond_1

    .line 553
    iget-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    if-eqz v2, :cond_1

    .line 555
    cmpl-float v2, v0, v9

    if-lez v2, :cond_a

    .line 556
    invoke-virtual {p0}, Lcom/special/ResideMenu/ResideMenu;->closeMenu()V

    goto/16 :goto_0

    .line 558
    :cond_a
    iget v2, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    invoke-virtual {p0, v2}, Lcom/special/ResideMenu/ResideMenu;->openMenu(I)V

    goto/16 :goto_0

    .line 562
    :cond_b
    iget-boolean v2, p0, Lcom/special/ResideMenu/ResideMenu;->canScale:Z

    if-eqz v2, :cond_1

    .line 564
    cmpl-float v2, v0, v9

    if-lez v2, :cond_c

    .line 565
    invoke-virtual {p0}, Lcom/special/ResideMenu/ResideMenu;->closeMenu()V

    goto/16 :goto_0

    .line 567
    :cond_c
    iget v2, p0, Lcom/special/ResideMenu/ResideMenu;->scaleDirection:I

    invoke-virtual {p0, v2}, Lcom/special/ResideMenu/ResideMenu;->openMenu(I)V

    goto/16 :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 606
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .prologue
    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 591
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public openMenu(I)V
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 255
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->isInDisableDirection(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You have set this direction disable, but now you want to open menu in this direction."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_0
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->setScaleDirection(I)V

    .line 259
    iput-boolean v7, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    .line 260
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->view_activity:Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v6, v6}, Lcom/special/ResideMenu/ResideMenu;->buildScaleDownAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v1

    .line 261
    .local v1, "scaleDown_activity":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    iget v4, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleX:F

    add-float/2addr v4, v6

    iget v5, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleY:F

    add-float/2addr v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/special/ResideMenu/ResideMenu;->buildScaleDownAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v2

    .line 262
    .local v2, "scaleDown_shadow":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4}, Lcom/special/ResideMenu/ResideMenu;->buildMenuAnimation(Landroid/view/View;F)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    .line 263
    .local v0, "alpha_menu":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v3, p0, Lcom/special/ResideMenu/ResideMenu;->animationListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 264
    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v2, v3, v8

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 265
    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 266
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 267
    return-void
.end method

.method public openMenuOld(I)V
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 270
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->isInDisableDirection(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You have set this direction disable, but now you want to open menu in this direction."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/special/ResideMenu/ResideMenu;->setScaleDirection(I)V

    .line 274
    iput-boolean v7, p0, Lcom/special/ResideMenu/ResideMenu;->isOpened:Z

    .line 276
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleX:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/special/ResideMenu/ResideMenu;->shadow_AdjustScaleY:F

    add-float/2addr v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/special/ResideMenu/ResideMenu;->buildScaleDownAnimation(Landroid/view/View;FF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v1

    .line 278
    .local v1, "scaleDown_shadow":Lcom/nineoldandroids/animation/AnimatorSet;
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->animationListener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 279
    iget-object v2, p0, Lcom/special/ResideMenu/ResideMenu;->sv_menu:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3}, Lcom/special/ResideMenu/ResideMenu;->buildMenuAnimation(Landroid/view/View;F)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    .line 280
    .local v0, "alpha_menu":Lcom/nineoldandroids/animation/AnimatorSet;
    new-array v2, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 281
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 282
    return-void
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->ignoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "imageResrouce"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    return-void
.end method

.method public setDirectionDisable(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->disabledDirection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/special/ResideMenu/ResideMenuItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/special/ResideMenu/ResideMenuItem;>;"
    iput-object p1, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    .line 177
    invoke-direct {p0}, Lcom/special/ResideMenu/ResideMenu;->rebuildMenu()V

    .line 178
    return-void
.end method

.method public setMenuItems(Ljava/util/List;I)V
    .locals 0
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/special/ResideMenu/ResideMenuItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/special/ResideMenu/ResideMenuItem;>;"
    if-nez p2, :cond_0

    .line 188
    iput-object p1, p0, Lcom/special/ResideMenu/ResideMenu;->leftMenuItems:Ljava/util/List;

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/special/ResideMenu/ResideMenu;->rebuildMenu()V

    .line 192
    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/special/ResideMenu/ResideMenu;->rightMenuItems:Ljava/util/List;

    goto :goto_0
.end method

.method public setMenuListener(Lcom/special/ResideMenu/ResideMenu$OnMenuListener;)V
    .locals 0
    .param p1, "menuListener"    # Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/special/ResideMenu/ResideMenu;->menuListener:Lcom/special/ResideMenu/ResideMenu$OnMenuListener;

    .line 233
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    sget v1, Lcom/special/ResideMenu/R$drawable;->shadow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/special/ResideMenu/ResideMenu;->iv_shadow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
