.class public Lcom/kankunit/smartplugcronus/customview/SceneGridView;
.super Landroid/widget/GridView;
.source "SceneGridView.java"


# static fields
.field private static final speed:I = 0x14


# instance fields
.field private context:Landroid/content/Context;

.field private dragResponseMS:J

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
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    .line 45
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->dragResponseMS:J

    .line 49
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDrag:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mAnimationEnd:Z

    .line 122
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDeleteable:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView$1;-><init>(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView$2;-><init>(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    .line 138
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mVibrator:Landroid/os/Vibrator;

    .line 139
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 140
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStatusHeight:I

    .line 142
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumnsSet:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDrag:Z

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/customview/SceneGridView;II)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/customview/SceneGridView;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    return-void
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mAnimationEnd:Z

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->moveY:I

    return v0
.end method

.method private animateReorder(II)V
    .locals 10
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 471
    if-le p2, p1, :cond_1

    const/4 v6, 0x1

    .line 472
    .local v6, "isForward":Z
    :goto_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 473
    .local v8, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    if-eqz v6, :cond_4

    .line 474
    move v7, p1

    .local v7, "pos":I
    :goto_1
    if-lt v7, p2, :cond_2

    .line 501
    :cond_0
    new-instance v9, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v9}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 502
    .local v9, "resultSet":Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-virtual {v9, v8}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 503
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 504
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 505
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/SceneGridView$4;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView$4;-><init>(Lcom/kankunit/smartplugcronus/customview/SceneGridView;)V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 516
    invoke-virtual {v9}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 520
    return-void

    .line 471
    .end local v6    # "isForward":Z
    .end local v7    # "pos":I
    .end local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v9    # "resultSet":Lcom/nineoldandroids/animation/AnimatorSet;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 475
    .restart local v6    # "isForward":Z
    .restart local v7    # "pos":I
    .restart local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 478
    .local v1, "view":Landroid/view/View;
    add-int/lit8 v0, v7, 0x1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 480
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    .line 481
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    .line 479
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 484
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 483
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 488
    .end local v1    # "view":Landroid/view/View;
    .end local v7    # "pos":I
    :cond_4
    move v7, p1

    .restart local v7    # "pos":I
    :goto_3
    if-le v7, p2, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 490
    .restart local v1    # "view":Landroid/view/View;
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    add-int/2addr v0, v7

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 492
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    .line 493
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    .line 491
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 496
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 495
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

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

    .line 351
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 352
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 353
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 354
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 355
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 356
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 357
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 358
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 359
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 362
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 363
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
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

    .line 456
    const-string v3, "translationX"

    new-array v4, v7, [F

    .line 457
    aput p2, v4, v5

    aput p3, v4, v6

    .line 456
    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 458
    .local v1, "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v3, "translationY"

    new-array v4, v7, [F

    .line 459
    aput p4, v4, v5

    aput p5, v4, v6

    .line 458
    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 460
    .local v2, "animY":Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 461
    .local v0, "animSetXY":Lcom/nineoldandroids/animation/AnimatorSet;
    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 462
    return-object v0
.end method

.method private static getStatusHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 569
    const/4 v5, 0x0

    .line 570
    .local v5, "statusHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "localRect":Landroid/graphics/Rect;
    move-object v6, p0

    .line 571
    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 572
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 573
    if-nez v5, :cond_0

    .line 576
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 577
    .local v2, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 578
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

    .line 579
    .local v1, "i5":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 584
    .end local v1    # "i5":I
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 580
    :catch_0
    move-exception v0

    .line 581
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

    .line 306
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 310
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 311
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_0

    .line 315
    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    .line 319
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 382
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 383
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->onSwapItem(II)V

    .line 386
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method private onStopDrag()V
    .locals 3

    .prologue
    .line 524
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 525
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 526
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->setHideItem(I)V

    .line 529
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->removeDragImage()V

    .line 531
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->reorderShortcut()V

    .line 532
    return-void
.end method

.method private onSwapItem(II)V
    .locals 5
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->pointToPosition(II)I

    move-result v1

    .line 423
    .local v1, "tempPosition":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSwapItem---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 424
    if-nez v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mAnimationEnd:Z

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    invoke-interface {v2, v3, v1}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->reorderItems(II)V

    .line 429
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    invoke-interface {v2, v1}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->setHideItem(I)V

    .line 431
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 432
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView$3;-><init>(Lcom/kankunit/smartplugcronus/customview/SceneGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private removeDragImage()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 374
    :cond_0
    return-void
.end method

.method private reorderShortcut()V
    .locals 10

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildCount()I

    move-result v0

    .line 535
    .local v0, "gridItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 549
    return-void

    .line 536
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 537
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0701d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 538
    .local v3, "idTv":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "reorder id is--"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->getSceneById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-result-object v5

    .line 541
    .local v5, "scm":Lcom/kankunit/smartplugcronus/model/SceneModel;
    if-eqz v5, :cond_1

    .line 542
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v4

    .line 543
    .local v4, "orderNo":I
    invoke-virtual {v5, v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setOrderNo(I)V

    .line 544
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->updateScene(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/SceneModel;)V

    .line 535
    .end local v4    # "orderNo":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private startShake(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->context:Landroid/content/Context;

    const v2, 0x7f040011

    .line 551
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 553
    .local v0, "shake":Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 554
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 555
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 556
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDeleteable:Z

    if-nez v2, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 243
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownX:I

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownY:I

    .line 246
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownX:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    .line 247
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    if-nez v2, :cond_1

    .line 248
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 251
    :cond_1
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 252
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    .line 258
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

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
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownY:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mPoint2ItemTop:I

    .line 263
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownX:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mPoint2ItemLeft:I

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mOffset2Top:I

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mOffset2Left:I

    .line 268
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDownScrollBorder:I

    .line 269
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mUpScrollBorder:I

    .line 273
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 274
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 275
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

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
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isDeleteable()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDeleteable:Z

    return v0
.end method

.method public isDragable()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 203
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 205
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mColumnWidth:I

    if-lez v2, :cond_4

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 207
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getPaddingRight()I

    move-result v3

    .line 206
    sub-int/2addr v2, v3

    .line 207
    const/4 v3, 0x0

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 208
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mColumnWidth:I

    div-int v1, v0, v2

    .line 209
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_3

    .line 210
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 224
    .end local v0    # "gridWidth":I
    :cond_0
    :goto_1
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    .line 227
    .end local v1    # "numFittedColumns":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 229
    return-void

    .line 211
    .restart local v0    # "gridWidth":I
    .restart local v1    # "numFittedColumns":I
    :cond_2
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mColumnWidth:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    .line 212
    iget v4, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v4

    .line 211
    add-int/2addr v2, v3

    .line 212
    if-le v2, v0, :cond_0

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 219
    :cond_3
    const/4 v1, 0x1

    .line 221
    goto :goto_1

    .line 222
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
    .line 326
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    const/4 v0, 0x1

    .line 341
    :goto_1
    return v0

    .line 329
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->moveX:I

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->moveY:I

    .line 332
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->moveX:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->onDragItem(II)V

    goto :goto_0

    .line 335
    :pswitch_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->onStopDrag()V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDrag:Z

    goto :goto_0

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 327
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
    .line 167
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    instance-of v0, p1, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    .line 174
    return-void

    .line 172
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
    .line 187
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 188
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mColumnWidth:I

    .line 189
    return-void
.end method

.method public setDeleteable(Z)V
    .locals 0
    .param p1, "isDeleteable"    # Z

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDeleteable:Z

    .line 601
    return-void
.end method

.method public setDragResponseMS(J)V
    .locals 0
    .param p1, "dragResponseMS"    # J

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->dragResponseMS:J

    .line 236
    return-void
.end method

.method public setDragable(Z)V
    .locals 0
    .param p1, "isDragable"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    .line 593
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 195
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mHorizontalSpacing:I

    .line 196
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumnsSet:Z

    .line 181
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->mNumColumns:I

    .line 182
    return-void
.end method

.method public startShake()V
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildCount()I

    move-result v0

    .line 559
    .local v0, "gridItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 563
    return-void

    .line 560
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 561
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->startShake(Landroid/view/View;)V

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
