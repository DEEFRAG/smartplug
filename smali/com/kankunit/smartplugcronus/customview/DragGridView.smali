.class public Lcom/kankunit/smartplugcronus/customview/DragGridView;
.super Landroid/widget/GridView;
.source "DragGridView.java"


# static fields
.field private static final speed:I = 0x14


# instance fields
.field private allowDrag:Z

.field private dragResponseMS:J

.field private isDrag:Z

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
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->dragResponseMS:J

    .line 42
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->isDrag:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mAnimationEnd:Z

    .line 93
    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->allowDrag:Z

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView$1;-><init>(Lcom/kankunit/smartplugcronus/customview/DragGridView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 328
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView$2;-><init>(Lcom/kankunit/smartplugcronus/customview/DragGridView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 106
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mVibrator:Landroid/os/Vibrator;

    .line 107
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 108
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStatusHeight:I

    .line 110
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumnsSet:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/DragGridView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->isDrag:Z

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/customview/DragGridView;II)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/customview/DragGridView;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    return-void
.end method

.method static synthetic access$15(Lcom/kankunit/smartplugcronus/customview/DragGridView;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mAnimationEnd:Z

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/customview/DragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/customview/DragGridView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/customview/DragGridView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveY:I

    return v0
.end method

.method private animateReorder(II)V
    .locals 10
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 388
    if-le p2, p1, :cond_1

    const/4 v6, 0x1

    .line 389
    .local v6, "isForward":Z
    :goto_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 390
    .local v8, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    if-eqz v6, :cond_4

    .line 391
    move v7, p1

    .local v7, "pos":I
    :goto_1
    if-lt v7, p2, :cond_2

    .line 418
    :cond_0
    new-instance v9, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v9}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 419
    .local v9, "resultSet":Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-virtual {v9, v8}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 420
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 421
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/DragGridView$4;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView$4;-><init>(Lcom/kankunit/smartplugcronus/customview/DragGridView;)V

    invoke-virtual {v9, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 433
    invoke-virtual {v9}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 434
    return-void

    .line 388
    .end local v6    # "isForward":Z
    .end local v7    # "pos":I
    .end local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    .end local v9    # "resultSet":Lcom/nineoldandroids/animation/AnimatorSet;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 392
    .restart local v6    # "isForward":Z
    .restart local v7    # "pos":I
    .restart local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, "view":Landroid/view/View;
    add-int/lit8 v0, v7, 0x1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 397
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    .line 398
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    .line 396
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 401
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 400
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 405
    .end local v1    # "view":Landroid/view/View;
    .end local v7    # "pos":I
    :cond_4
    move v7, p1

    .restart local v7    # "pos":I
    :goto_3
    if-le v7, p2, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .restart local v1    # "view":Landroid/view/View;
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    add-int/2addr v0, v7

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    .line 408
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 413
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 412
    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Lcom/nineoldandroids/animation/AnimatorSet;

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

    .line 295
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 296
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 297
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 298
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 299
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 300
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 301
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 302
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 303
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 306
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 307
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
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

    .line 377
    const-string v3, "translationX"

    new-array v4, v7, [F

    .line 378
    aput p2, v4, v5

    aput p3, v4, v6

    .line 377
    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 379
    .local v1, "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-string v3, "translationY"

    new-array v4, v7, [F

    .line 380
    aput p4, v4, v5

    aput p5, v4, v6

    .line 379
    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 381
    .local v2, "animY":Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 382
    .local v0, "animSetXY":Lcom/nineoldandroids/animation/AnimatorSet;
    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 383
    return-object v0
.end method

.method private static getStatusHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    const/4 v5, 0x0

    .line 447
    .local v5, "statusHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, "localRect":Landroid/graphics/Rect;
    move-object v6, p0

    .line 448
    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 449
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 450
    if-nez v5, :cond_0

    .line 453
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 454
    .local v2, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 455
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

    .line 456
    .local v1, "i5":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 461
    .end local v1    # "i5":I
    .end local v2    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 457
    :catch_0
    move-exception v0

    .line 458
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

    .line 254
    if-nez p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 258
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 259
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_0

    .line 263
    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    .line 267
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 320
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 321
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->onSwapItem(II)V

    .line 324
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method private onSwapItem(II)V
    .locals 4
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->pointToPosition(II)I

    move-result v1

    .line 356
    .local v1, "tempPosition":I
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mAnimationEnd:Z

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    invoke-interface {v2, v3, v1}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->reorderItems(II)V

    .line 358
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    invoke-interface {v2, v1}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->setHideItem(I)V

    .line 360
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 361
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView$3;-><init>(Lcom/kankunit/smartplugcronus/customview/DragGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 373
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private removeDragImage()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->allowDrag:Z

    if-nez v2, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 249
    :goto_0
    return v2

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 249
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownX:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownY:I

    .line 208
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownX:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    .line 211
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    if-nez v2, :cond_3

    .line 212
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 215
    :cond_3
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    .line 219
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownY:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mPoint2ItemTop:I

    .line 220
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownX:I

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mPoint2ItemLeft:I

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mOffset2Top:I

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mOffset2Left:I

    .line 225
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDownScrollBorder:I

    .line 226
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mUpScrollBorder:I

    .line 230
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 231
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 232
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_1

    .line 237
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 238
    .local v0, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 240
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 245
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 167
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 169
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mColumnWidth:I

    if-lez v2, :cond_4

    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 171
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getPaddingRight()I

    move-result v3

    .line 170
    sub-int/2addr v2, v3

    .line 171
    const/4 v3, 0x0

    .line 170
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 172
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mColumnWidth:I

    div-int v1, v0, v2

    .line 173
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_3

    .line 174
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 188
    .end local v0    # "gridWidth":I
    :cond_0
    :goto_1
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    .line 191
    .end local v1    # "numFittedColumns":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 192
    return-void

    .line 175
    .restart local v0    # "gridWidth":I
    .restart local v1    # "numFittedColumns":I
    :cond_2
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mColumnWidth:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    .line 176
    iget v4, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v4

    .line 175
    add-int/2addr v2, v3

    .line 176
    if-le v2, v0, :cond_0

    .line 177
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 183
    :cond_3
    const/4 v1, 0x1

    .line 185
    goto :goto_1

    .line 186
    .end local v0    # "gridWidth":I
    .end local v1    # "numFittedColumns":I
    :cond_4
    const/4 v1, 0x2

    .restart local v1    # "numFittedColumns":I
    goto :goto_1
.end method

.method public onStopDrag()V
    .locals 3

    .prologue
    .line 437
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragPosition:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;->setHideItem(I)V

    .line 442
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->removeDragImage()V

    .line 443
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    const/4 v0, 0x1

    .line 290
    :goto_1
    return v0

    .line 277
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveX:I

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveY:I

    .line 280
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveX:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->onDragItem(II)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/DragGridView;->onStopDrag()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->isDrag:Z

    goto :goto_0

    .line 290
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 275
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
    .line 133
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    instance-of v0, p1, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/DragGridBaseAdapter;

    .line 140
    return-void

    .line 138
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the adapter must be implements DragGridAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowDrag(Z)V
    .locals 0
    .param p1, "allowDrag"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->allowDrag:Z

    .line 466
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 154
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mColumnWidth:I

    .line 155
    return-void
.end method

.method public setDragResponseMS(J)V
    .locals 0
    .param p1, "dragResponseMS"    # J

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->dragResponseMS:J

    .line 196
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 161
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mHorizontalSpacing:I

    .line 162
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumnsSet:Z

    .line 147
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/DragGridView;->mNumColumns:I

    .line 148
    return-void
.end method
