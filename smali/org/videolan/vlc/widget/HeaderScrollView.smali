.class public Lorg/videolan/vlc/widget/HeaderScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "HeaderScrollView.java"


# static fields
.field public static final MODE_TOTAL:I = 0x4


# instance fields
.field private mProgress:F

.field private mTabWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/widget/HeaderScrollView;->mProgress:F

    .line 41
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/widget/HeaderScrollView;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/videolan/vlc/widget/HeaderScrollView;->mTabWidth:I

    return v0
.end method

.method private restoreScroll()V
    .locals 3

    .prologue
    .line 88
    iget v1, p0, Lorg/videolan/vlc/widget/HeaderScrollView;->mProgress:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/videolan/vlc/widget/HeaderScrollView;->mTabWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 89
    .local v0, "x":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/widget/HeaderScrollView;->smoothScrollTo(II)V

    .line 90
    return-void
.end method


# virtual methods
.method public highlightTab(II)V
    .locals 7
    .param p1, "existingPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v6, 0x0

    .line 93
    const v4, 0x7f0700fc

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/widget/HeaderScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, "hl":Landroid/widget/LinearLayout;
    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/HeaderScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    .local v3, "oldView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, "newView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 103
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 97
    :array_0
    .array-data 4
        0x7f01007a
        0x7f010079
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 69
    invoke-direct {p0}, Lorg/videolan/vlc/widget/HeaderScrollView;->restoreScroll()V

    .line 70
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 47
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/videolan/vlc/widget/HeaderScrollView;->mTabWidth:I

    .line 49
    new-instance v0, Lorg/videolan/vlc/widget/HeaderScrollView$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/widget/HeaderScrollView$1;-><init>(Lorg/videolan/vlc/widget/HeaderScrollView;)V

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/widget/HeaderScrollView;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public scroll(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 73
    iput p1, p0, Lorg/videolan/vlc/widget/HeaderScrollView;->mProgress:F

    .line 74
    invoke-direct {p0}, Lorg/videolan/vlc/widget/HeaderScrollView;->restoreScroll()V

    .line 75
    return-void
.end method
