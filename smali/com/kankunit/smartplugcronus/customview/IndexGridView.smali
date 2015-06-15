.class public Lcom/kankunit/smartplugcronus/customview/IndexGridView;
.super Landroid/widget/GridView;
.source "IndexGridView.java"


# static fields
.field private static final speed:I = 0x14


# instance fields
.field private context:Landroid/content/Context;

.field private dragResponseMS:J

.field private indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

.field private isDeleteable:Z

.field private isDrag:Z

.field public isDragable:Z

.field private mAnimationEnd:Z

.field private mColumnWidth:I

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalSpacing:I

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mNumColumns:I

.field private mNumColumnsSet:Z

.field private mOffset2Left:I

.field private mOffset2Top:I

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mUpScrollBorder:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    .line 44
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->dragResponseMS:J

    .line 48
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDrag:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mAnimationEnd:Z

    .line 121
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable:Z

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView$1;-><init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 399
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView$2;-><init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 138
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    .line 139
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mVibrator:Landroid/os/Vibrator;

    .line 140
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStatusHeight:I

    .line 143
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumnsSet:Z

    if-nez v0, :cond_0

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    .line 147
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDrag:Z

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/customview/IndexGridView;II)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/customview/IndexGridView;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    return-void
.end method

.method static synthetic access$16(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mAnimationEnd:Z

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveY:I

    return v0
.end method

.method private animateReorder(II)V
    .locals 10
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 478
    if-le p2, p1, :cond_1

    const/4 v6, 0x1

    .line 479
    .local v6, "isForward":Z
    :goto_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 480
    .local v8, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    if-eqz v6, :cond_5

    .line 481
    move v7, p1

    .local v7, "pos":I
    :goto_1
    if-lt v7, p2, :cond_2

    .line 511
    :cond_0
    new-instance v9, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v9}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 512
    .local v9, "resultSet":Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-virtual {v9, v8}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 513
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 514
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 515
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/IndexGridView$5;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView$5;-><init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 526
    invoke-virtual {v9}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 530
    return-void

    .line 478
    .end local v6    # "isForward":Z
    .end local v7    # "pos":I
    .end local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v9    # "resultSet":Lcom/nineoldandroids/animation/AnimatorSet;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 482
    .restart local v6    # "isForward":Z
    .restart local v7    # "pos":I
    .restart local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 485
    .local v1, "view":Landroid/view/View;
    add-int/lit8 v0, v7, 0x1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    .line 487
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    .line 488
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    .line 486
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 490
    :cond_4
    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 493
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    .end local v1    # "view":Landroid/view/View;
    .end local v7    # "pos":I
    :cond_5
    move v7, p1

    .restart local v7    # "pos":I
    :goto_3
    if-le v7, p2, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 500
    .restart local v1    # "view":Landroid/view/View;
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    add-int/2addr v0, v7

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 502
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    .line 503
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    .line 501
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 506
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 505
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I

    .prologue
    const/4 v3, -0x2

    .line 358
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 359
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 360
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 361
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 362
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 363
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 364
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 365
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 366
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 369
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 370
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    return-void
.end method

.method private createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startX"    # F
    .param p3, "endX"    # F
    .param p4, "startY"    # F
    .param p5, "endY"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 463
    const-string v3, "translationX"

    new-array v4, v7, [F

    .line 464
    aput p2, v4, v5

    aput p3, v4, v6

    .line 463
    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 465
    .local v1, "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v3, "translationY"

    new-array v4, v7, [F

    .line 466
    aput p4, v4, v5

    aput p5, v4, v6

    .line 465
    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 467
    .local v2, "animY":Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 468
    .local v0, "animSetXY":Lcom/nineoldandroids/animation/AnimatorSet;
    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 469
    return-object v0
.end method

.method private static getStatusHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    const/4 v5, 0x0

    .line 662
    .local v5, "statusHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "localRect":Landroid/graphics/Rect;
    move-object v6, p0

    .line 663
    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 664
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 665
    if-nez v5, :cond_0

    .line 668
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 669
    .local v2, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 670
    .local v3, "localObject":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 671
    .local v1, "i5":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 676
    .end local v1    # "i5":I
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 317
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 318
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_0

    .line 322
    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    .line 326
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 389
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 390
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->onSwapItem(II)V

    .line 393
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method private onStopDrag()V
    .locals 3

    .prologue
    .line 534
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 536
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->setHideItem(I)V

    .line 539
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->removeDragImage()V

    .line 541
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->reorderShortcut()V

    .line 544
    return-void
.end method

.method private onSwapItem(II)V
    .locals 4
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->pointToPosition(II)I

    move-result v1

    .line 431
    .local v1, "tempPosition":I
    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mAnimationEnd:Z

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    invoke-interface {v2, v3, v1}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->reorderItems(II)V

    .line 436
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    invoke-interface {v2, v1}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->setHideItem(I)V

    .line 438
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 439
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView$4;-><init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private removeDragImage()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 381
    :cond_0
    return-void
.end method

.method private reorderShortcut()V
    .locals 15

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildCount()I

    move-result v2

    .line 547
    .local v2, "gridItemCount":I
    const/4 v0, 0x0

    .line 548
    .local v0, "beginIndex":I
    const/4 v1, 0x0

    .line 549
    .local v1, "beginOrderNo":I
    iget-object v13, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getAllShortcut(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 550
    .local v10, "shortcutList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_3

    .line 578
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .line 579
    .local v3, "hasNull":Z
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    if-lt v7, v0, :cond_7

    .line 589
    :cond_1
    const/4 v4, 0x0

    :goto_3
    if-le v4, v2, :cond_8

    .line 606
    iget-object v13, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getAllShortcut(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 607
    const/4 v4, 0x0

    .line 608
    add-int v7, v2, v0

    .line 609
    if-nez v3, :cond_2

    .line 610
    add-int/lit8 v7, v7, -0x1

    .line 612
    :cond_2
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lt v7, v13, :cond_b

    .line 625
    return-void

    .line 551
    .end local v3    # "hasNull":Z
    .end local v7    # "index":I
    :cond_3
    const/4 v8, 0x0

    .line 552
    .local v8, "isInGridView":Z
    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 553
    .local v12, "view":Landroid/view/View;
    const v13, 0x7f0701d1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 554
    .local v6, "idTv":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "id":Ljava/lang/String;
    iget-object v13, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v9

    .line 556
    .local v9, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-nez v9, :cond_4

    .line 557
    const/4 v0, 0x0

    .line 558
    const/4 v1, 0x0

    .line 559
    const/4 v8, 0x1

    .line 560
    goto :goto_1

    .line 562
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "index":I
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-lt v7, v13, :cond_5

    .line 572
    :goto_6
    if-nez v8, :cond_0

    .line 550
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 563
    :cond_5
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 564
    .local v11, "shortcutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getId()I

    move-result v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ne v13, v14, :cond_6

    .line 566
    move v0, v7

    .line 567
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getOrderNo()I

    move-result v1

    .line 568
    const/4 v8, 0x1

    .line 569
    goto :goto_6

    .line 562
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 583
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "idTv":Landroid/widget/TextView;
    .end local v8    # "isInGridView":Z
    .end local v9    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v11    # "shortcutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v12    # "view":Landroid/view/View;
    .restart local v3    # "hasNull":Z
    :cond_7
    const/4 v3, 0x1

    .line 584
    if-nez v3, :cond_1

    .line 579
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 590
    :cond_8
    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 591
    .restart local v12    # "view":Landroid/view/View;
    if-nez v12, :cond_a

    .line 589
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 594
    :cond_a
    const v13, 0x7f0701d1

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 595
    .restart local v6    # "idTv":Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 596
    .restart local v5    # "id":Ljava/lang/String;
    iget-object v13, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v9

    .line 600
    .restart local v9    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v9, :cond_9

    .line 601
    add-int v13, v4, v1

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 602
    iget-object v13, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    invoke-static {v13, v9}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto :goto_7

    .line 613
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "idTv":Landroid/widget/TextView;
    .end local v9    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v12    # "view":Landroid/view/View;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 614
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 615
    .restart local v11    # "shortcutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v11, v13}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 616
    iget-object v13, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    invoke-static {v13, v11}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 612
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4
.end method

.method private startShake(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 628
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->context:Landroid/content/Context;

    const v2, 0x7f040011

    .line 627
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 629
    .local v0, "shake":Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 630
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 631
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 632
    return-void
.end method

.method private stopShake(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 655
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable:Z

    if-nez v2, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 244
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownX:I

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownY:I

    .line 247
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownX:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    .line 248
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    if-nez v2, :cond_1

    .line 249
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 252
    :cond_1
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 253
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 262
    :cond_3
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownY:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mPoint2ItemTop:I

    .line 263
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownX:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mPoint2ItemLeft:I

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mOffset2Top:I

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mOffset2Left:I

    .line 268
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDownScrollBorder:I

    .line 269
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mUpScrollBorder:I

    .line 273
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 274
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 275
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 281
    .local v0, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 283
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/kankunit/smartplugcronus/customview/IndexGridView$3;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView$3;-><init>(Lcom/kankunit/smartplugcronus/customview/IndexGridView;)V

    .line 297
    const-wide/16 v4, 0xc8

    .line 291
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getIndexFragment()Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    return-object v0
.end method

.method public isDeleteable()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable:Z

    return v0
.end method

.method public isDragable()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 204
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 206
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mColumnWidth:I

    if-lez v2, :cond_4

    .line 207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 208
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getPaddingRight()I

    move-result v3

    .line 207
    sub-int/2addr v2, v3

    .line 208
    const/4 v3, 0x0

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 209
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mColumnWidth:I

    div-int v1, v0, v2

    .line 210
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_3

    .line 211
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 225
    .end local v0    # "gridWidth":I
    :cond_0
    :goto_1
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    .line 228
    .end local v1    # "numFittedColumns":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 230
    return-void

    .line 212
    .restart local v0    # "gridWidth":I
    .restart local v1    # "numFittedColumns":I
    :cond_2
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mColumnWidth:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    .line 213
    iget v4, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v4

    .line 212
    add-int/2addr v2, v3

    .line 213
    if-le v2, v0, :cond_0

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 220
    :cond_3
    const/4 v1, 0x1

    .line 222
    goto :goto_1

    .line 223
    .end local v0    # "gridWidth":I
    .end local v1    # "numFittedColumns":I
    :cond_4
    const/4 v1, 0x2

    .restart local v1    # "numFittedColumns":I
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    const/4 v0, 0x1

    .line 348
    :goto_1
    return v0

    .line 336
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveX:I

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveY:I

    .line 339
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveX:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->onDragItem(II)V

    goto :goto_0

    .line 342
    :pswitch_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->onStopDrag()V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDrag:Z

    goto :goto_0

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    instance-of v0, p1, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    .line 175
    return-void

    .line 173
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the adapter must be implements DragGridAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 189
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mColumnWidth:I

    .line 190
    return-void
.end method

.method public setDeleteable(Z)V
    .locals 0
    .param p1, "isDeleteable"    # Z

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDeleteable:Z

    .line 693
    return-void
.end method

.method public setDragResponseMS(J)V
    .locals 0
    .param p1, "dragResponseMS"    # J

    .prologue
    .line 236
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->dragResponseMS:J

    .line 237
    return-void
.end method

.method public setDragable(Z)V
    .locals 0
    .param p1, "isDragable"    # Z

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->isDragable:Z

    .line 685
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 196
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mHorizontalSpacing:I

    .line 197
    return-void
.end method

.method public setIndexFragment(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0
    .param p1, "indexFragment"    # Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 701
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumnsSet:Z

    .line 182
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->mNumColumns:I

    .line 183
    return-void
.end method

.method public startShake()V
    .locals 3

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildCount()I

    move-result v0

    .line 635
    .local v0, "gridItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 642
    return-void

    .line 636
    :cond_0
    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 638
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->startShake(Landroid/view/View;)V

    .line 635
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public stopShake()V
    .locals 3

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildCount()I

    move-result v0

    .line 645
    .local v0, "gridItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 652
    return-void

    .line 646
    :cond_0
    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 648
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->stopShake(Landroid/view/View;)V

    .line 645
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
