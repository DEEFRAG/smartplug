.class public Lorg/videolan/vlc/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;
    }
.end annotation


# static fields
.field private static final DEFAULT_OVERHANG_SIZE:I = 0x40

.field static final IMPL:Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "VLC/SlidingPaneLayout"


# instance fields
.field public final STATE_CLOSED:I

.field public final STATE_OPENED:I

.field public final STATE_OPENED_ENTIRELY:I

.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private mOverhangSize:I

.field private mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mState:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .local v0, "deviceVersion":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 140
    new-instance v1, Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->IMPL:Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->IMPL:Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    iput v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->STATE_OPENED_ENTIRELY:I

    .line 119
    iput v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->STATE_OPENED:I

    .line 120
    const/4 v2, 0x2

    iput v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->STATE_CLOSED:I

    .line 128
    iput-boolean v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 185
    iput v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 187
    if-eqz p2, :cond_0

    .line 188
    sget-object v2, Lcom/kankunit/smartplugcronus/R$styleable;->SlidingPaneLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 190
    .local v1, "ta":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 192
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 197
    .local v0, "density":F
    iget v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    if-ne v2, v3, :cond_1

    .line 198
    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 201
    :cond_1
    invoke-virtual {p0, v4}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 203
    new-instance v2, Lorg/videolan/vlc/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Lorg/videolan/vlc/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 204
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 206
    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Lorg/videolan/vlc/widget/SlidingPaneLayout;Lorg/videolan/vlc/widget/SlidingPaneLayout$DragHelperCallback;)V

    invoke-static {p0, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 207
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 208
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$10(Lorg/videolan/vlc/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/widget/SlidingPaneLayout;)F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    return v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/widget/SlidingPaneLayout;I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    return-void
.end method

.method static synthetic access$5(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    return v0
.end method

.method static synthetic access$7(Lorg/videolan/vlc/widget/SlidingPaneLayout;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$8(Lorg/videolan/vlc/widget/SlidingPaneLayout;I)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$9(Lorg/videolan/vlc/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x1

    .line 567
    iget-boolean v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 568
    const/4 v1, 0x2

    iput v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    .line 569
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed()V

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 688
    sget-object v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->IMPL:Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Lorg/videolan/vlc/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 689
    return-void
.end method

.method private onPanelDragged(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    .line 655
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 657
    const/4 v2, 0x0

    iput v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 665
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 662
    .local v0, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int v1, v2, v3

    .line 664
    .local v1, "topBound":I
    sub-int v2, p1, v1

    int-to-float v2, v2

    iget v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    goto :goto_0
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 4
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x1

    .line 593
    iget-boolean v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 594
    iput v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    .line 595
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened()V

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    int-to-float v2, v2

    iget v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openPaneEntirely(Landroid/view/View;I)Z
    .locals 3
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 580
    iget-boolean v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v2, :cond_1

    .line 581
    iput v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    .line 582
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpenedEntirely()V

    .line 589
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, p2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 589
    goto :goto_0
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 297
    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dy"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 779
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 780
    check-cast v7, Landroid/view/ViewGroup;

    .line 781
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 782
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 783
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 785
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_1

    .line 798
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 788
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 789
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 790
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 791
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    .line 792
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 791
    invoke-virtual/range {v0 .. v5}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 792
    if-eqz v0, :cond_2

    .line 793
    const/4 v0, 0x1

    goto :goto_1

    .line 785
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 798
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 815
    instance-of v0, p1, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-boolean v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 720
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 750
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 752
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 753
    .local v4, "shadowView":Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_0

    iget-object v6, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 765
    :cond_0
    :goto_1
    return-void

    .line 752
    .end local v4    # "shadowView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 758
    .restart local v4    # "shadowView":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 759
    .local v3, "shadowHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    .line 760
    .local v2, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 761
    .local v1, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 762
    .local v0, "bottom":I
    sub-int v5, v0, v3

    .line 763
    .local v5, "top":I
    iget-object v6, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    iget-object v6, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 669
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 671
    .local v0, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 673
    .local v2, "save":I
    iget-boolean v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 675
    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 676
    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 677
    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 680
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 682
    .local v1, "result":Z
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 684
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 803
    new-instance v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 820
    new-instance v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 808
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 809
    new-instance v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 808
    :goto_0
    return-object v0

    .line 810
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    return v0
.end method

.method public isSecondChildUnder(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 944
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, "secondChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 946
    const/4 v1, 0x0

    .line 947
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 304
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 309
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 311
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 315
    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 316
    return-void

    .line 312
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 313
    .local v1, "dlr":Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 508
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 510
    .local v0, "action":I
    iget-boolean v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v8, :cond_1

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    iget-object v7, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 512
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 548
    :goto_0
    return v7

    .line 515
    :cond_1
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    if-ne v0, v3, :cond_3

    .line 516
    :cond_2
    iget-object v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto :goto_0

    .line 520
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 544
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v10, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 544
    cmpg-float v8, v8, v9

    if-gtz v8, :cond_5

    .local v3, "interceptForDrag":Z
    :goto_2
    move v7, v3

    .line 548
    goto :goto_0

    .line 522
    .end local v3    # "interceptForDrag":Z
    :pswitch_1
    iput-boolean v7, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 524
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 525
    .local v6, "y":F
    iput v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 526
    iput v6, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_1

    .line 531
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 532
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 533
    .restart local v6    # "y":F
    iget v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 534
    .local v1, "adx":F
    iget v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 535
    .local v2, "ady":F
    iget-object v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    .line 536
    .local v4, "slop":I
    int-to-float v8, v4

    cmpl-float v8, v2, v8

    if-lez v8, :cond_4

    cmpl-float v8, v1, v2

    if-lez v8, :cond_4

    .line 537
    iget-object v8, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 538
    iput-boolean v3, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    goto :goto_0

    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v4    # "slop":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_5
    move v3, v7

    .line 544
    goto :goto_2

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 434
    sub-int v9, p5, p3

    .line 435
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v17

    .line 436
    .local v17, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v15

    .line 437
    .local v15, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v16

    .line 439
    .local v16, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    .line 440
    .local v4, "childCount":I
    move/from16 v20, v17

    .line 441
    .local v20, "yStart":I
    move/from16 v13, v20

    .line 443
    .local v13, "nextYStart":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v4, :cond_1

    .line 490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 494
    :cond_0
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 495
    return-void

    .line 444
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 446
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 443
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 452
    .local v11, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 453
    .local v5, "childHeight":I
    const/4 v14, 0x0

    .line 455
    .local v14, "offset":I
    iget-boolean v0, v11, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 456
    iget v0, v11, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    iget v0, v11, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v12, v21, v22

    .line 457
    .local v12, "margin":I
    sub-int v21, v9, v15

    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    sub-int v21, v21, v20

    sub-int v19, v21, v12

    .line 458
    .local v19, "range":I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 469
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 474
    :cond_3
    :goto_2
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    .line 475
    .local v18, "pos":I
    iget v0, v11, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v18

    add-int v20, v20, v21

    .line 476
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 481
    .end local v12    # "margin":I
    .end local v18    # "pos":I
    .end local v19    # "range":I
    :goto_3
    sub-int v8, v20, v14

    .line 482
    .local v8, "childTop":I
    add-int v3, v8, v5

    .line 483
    .local v3, "childBottom":I
    move/from16 v6, v16

    .line 484
    .local v6, "childLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v7, v6, v21

    .line 485
    .local v7, "childRight":I
    move/from16 v0, v16

    invoke-virtual {v2, v0, v8, v7, v3}, Landroid/view/View;->layout(IIII)V

    .line 487
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v13, v13, v21

    goto/16 :goto_1

    .line 463
    .end local v3    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .restart local v12    # "margin":I
    .restart local v19    # "range":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    goto :goto_2

    :cond_4
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_4

    .line 466
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    sub-float v21, v21, v22

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideOffset:F

    goto/16 :goto_2

    :cond_5
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_5

    .line 478
    .end local v12    # "margin":I
    .end local v19    # "range":I
    :cond_6
    move/from16 v20, v13

    goto :goto_3

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 320
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 321
    .local v18, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 322
    .local v19, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 323
    .local v9, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 325
    .local v10, "heightSize":I
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v9, v0, :cond_5

    .line 326
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 331
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    .line 332
    const/high16 v9, 0x40000000    # 2.0f

    .line 354
    :cond_0
    :goto_0
    const/4 v12, 0x0

    .line 355
    .local v12, "layoutWidth":I
    const/4 v14, -0x1

    .line 356
    .local v14, "maxLayoutWidth":I
    sparse-switch v18, :sswitch_data_0

    .line 365
    :goto_1
    const/4 v2, 0x0

    .line 366
    .local v2, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v20

    sub-int v20, v10, v20

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v21

    sub-int v8, v20, v21

    .line 367
    .local v8, "heightAvailable":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    .line 369
    .local v4, "childCount":I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-le v4, v0, :cond_1

    .line 370
    const-string v20, "VLC/SlidingPaneLayout"

    const-string v21, "onMeasure: More than two child views are not supported."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 377
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-lt v11, v4, :cond_7

    .line 419
    move v15, v10

    .line 420
    .local v15, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v20

    add-int v20, v20, v12

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v21

    add-int v16, v20, v21

    .line 422
    .local v16, "measuredWidth":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 423
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v20

    if-eqz v20, :cond_2

    if-nez v2, :cond_2

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 429
    :cond_2
    return-void

    .line 333
    .end local v2    # "canSlide":Z
    .end local v4    # "childCount":I
    .end local v8    # "heightAvailable":I
    .end local v11    # "i":I
    .end local v12    # "layoutWidth":I
    .end local v14    # "maxLayoutWidth":I
    .end local v15    # "measuredHeight":I
    .end local v16    # "measuredWidth":I
    :cond_3
    if-nez v9, :cond_0

    .line 334
    const/high16 v9, 0x40000000    # 2.0f

    .line 335
    const/16 v9, 0x12c

    .line 337
    goto :goto_0

    .line 338
    :cond_4
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "Height must have an exact value or MATCH_PARENT"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 340
    :cond_5
    if-nez v18, :cond_0

    .line 341
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 345
    if-nez v18, :cond_0

    .line 346
    const/high16 v18, -0x80000000

    .line 347
    const/16 v18, 0x12c

    .line 349
    goto :goto_0

    .line 350
    :cond_6
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "Width must not be UNSPECIFIED"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 358
    .restart local v12    # "layoutWidth":I
    .restart local v14    # "maxLayoutWidth":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v20

    sub-int v20, v19, v20

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    move v12, v14

    .line 359
    goto/16 :goto_1

    .line 361
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v20

    sub-int v20, v19, v20

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v21

    sub-int v14, v20, v21

    goto/16 :goto_1

    .line 378
    .restart local v2    # "canSlide":Z
    .restart local v4    # "childCount":I
    .restart local v8    # "heightAvailable":I
    .restart local v11    # "i":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 379
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 381
    .local v13, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 377
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 386
    :cond_9
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    add-int v17, v20, v21

    .line 387
    .local v17, "verticalMargin":I
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 388
    sub-int v20, v8, v17

    .line 389
    const/high16 v21, -0x80000000

    .line 388
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 398
    .local v5, "childHeightSpec":I
    :goto_4
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 399
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 406
    .local v7, "childWidthSpec":I
    :goto_5
    invoke-virtual {v3, v7, v5}, Landroid/view/View;->measure(II)V

    .line 407
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 409
    .local v6, "childWidth":I
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    if-le v6, v12, :cond_a

    .line 410
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 413
    :cond_a
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_8

    .line 414
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/lit8 v2, v2, 0x1

    .line 415
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto :goto_3

    .line 390
    .end local v5    # "childHeightSpec":I
    .end local v6    # "childWidth":I
    .end local v7    # "childWidthSpec":I
    :cond_b
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 391
    sub-int v20, v8, v17

    .line 392
    const/high16 v21, 0x40000000    # 2.0f

    .line 391
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 393
    .restart local v5    # "childHeightSpec":I
    goto :goto_4

    .line 394
    .end local v5    # "childHeightSpec":I
    :cond_c
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto :goto_4

    .line 400
    :cond_d
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 401
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 402
    .restart local v7    # "childWidthSpec":I
    goto :goto_5

    .line 403
    .end local v7    # "childWidthSpec":I
    :cond_e
    iget v0, v13, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childWidthSpec":I
    goto :goto_5

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 835
    move-object v0, p1

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;

    .line 836
    .local v0, "ss":Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 838
    iget v1, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;->state:I

    packed-switch v1, :pswitch_data_0

    .line 849
    :goto_0
    return-void

    .line 841
    :pswitch_0
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0

    .line 844
    :pswitch_1
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPaneEntirely()Z

    goto :goto_0

    .line 847
    :pswitch_2
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 825
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 827
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 828
    .local v0, "ss":Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;
    iget v2, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mState:I

    iput v2, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$SavedState;->state:I

    .line 830
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 501
    if-eq p2, p4, :cond_0

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 504
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 553
    iget-boolean v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 563
    :goto_0
    return v0

    .line 558
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    goto :goto_1

    .line 560
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public openPane()Z
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public openPaneEntirely()Z
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->openPaneEntirely(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 283
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 280
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 225
    iput p1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 226
    return-void
.end method

.method public setPanelSlideListener(Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mPanelSlideListener:Lorg/videolan/vlc/widget/SlidingPaneLayout$PanelSlideListener;

    .line 216
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 735
    iput-object p1, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 736
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 745
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 7
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-boolean v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v4, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v3

    .line 703
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;

    .line 705
    .local v0, "lp":Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/videolan/vlc/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int v1, v4, v5

    .line 706
    .local v1, "topBound":I
    int-to-float v4, v1

    iget v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 708
    .local v2, "y":I
    iget-object v4, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v6, p0, Lorg/videolan/vlc/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 710
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 711
    const/4 v3, 0x1

    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 19
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 236
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v11

    .line 237
    .local v11, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v18

    sub-int v13, v17, v18

    .line 238
    .local v13, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v15

    .line 239
    .local v15, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v18

    sub-int v2, v17, v18

    .line 244
    .local v2, "bottomBound":I
    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 246
    .local v10, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v12

    .line 247
    .local v12, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    .line 248
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 253
    .local v1, "bottom":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    .local v4, "childCount":I
    :goto_1
    if-lt v9, v4, :cond_2

    .line 274
    :cond_0
    return-void

    .line 250
    .end local v1    # "bottom":I
    .end local v4    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v12    # "right":I
    .end local v14    # "top":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bottom":I
    move v14, v1

    .restart local v14    # "top":I
    move v12, v1

    .restart local v12    # "right":I
    move v10, v1

    .restart local v10    # "left":I
    goto :goto_0

    .line 254
    .restart local v4    # "childCount":I
    .restart local v9    # "i":I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/videolan/vlc/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 256
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p1

    if-eq v3, v0, :cond_0

    .line 261
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 262
    .local v6, "clampedChildLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 263
    .local v8, "clampedChildTop":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 264
    .local v7, "clampedChildRight":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 266
    .local v5, "clampedChildBottom":I
    if-lt v6, v10, :cond_3

    if-lt v8, v14, :cond_3

    .line 267
    if-gt v7, v12, :cond_3

    if-gt v5, v1, :cond_3

    .line 268
    const/16 v16, 0x4

    .line 272
    .local v16, "vis":I
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 270
    .end local v16    # "vis":I
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "vis":I
    goto :goto_2
.end method
