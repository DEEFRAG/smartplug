.class public Lcom/kankunit/smartplugcronus/customview/OpenFolder;
.super Ljava/lang/Object;
.source "OpenFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;,
        Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;
    }
.end annotation


# static fields
.field private static ANIMALTION_TIME:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

.field private mAnchorLocation:[I

.field private mBackgroundView:Landroid/view/View;

.field private mBottomView:Landroid/widget/ImageView;

.field private mClosedAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mContext:Landroid/content/Context;

.field private mFolderDownY:I

.field private mFolderUpY:I

.field private mFolderView:Landroid/view/View;

.field private mFolderheigh:I

.field private mIsOpened:Z

.field private mOnFolderClosedListener:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;

.field private mOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSrceenheigh:I

.field private mSrceenwidth:I

.field private mTopView:Landroid/widget/ImageView;

.field private mUp_down:I

.field private mWindowIsAdd:Z

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private offsety:I

.field private offsetyLast:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "OpenFolder"

    sput-object v0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x12c

    sput v0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->ANIMALTION_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowIsAdd:Z

    .line 37
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowLayoutType:I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mAnchorLocation:[I

    .line 55
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mIsOpened:Z

    .line 77
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$1;-><init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 96
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;-><init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mClosedAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 130
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    .line 132
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 131
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowManager:Landroid/view/WindowManager;

    .line 133
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;-><init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    .line 134
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/OpenFolder;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mIsOpened:Z

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/customview/OpenFolder;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowIsAdd:Z

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOnFolderClosedListener:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->dismiss()V

    return-void
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->ANIMALTION_TIME:I

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderUpY:I

    return v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderDownY:I

    return v0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 248
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 249
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 250
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenwidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 251
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenheigh:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 252
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 253
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 254
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenFolder:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    return-object v0
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 262
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 276
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mIsOpened:Z

    if-nez v1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsetyLast:I

    int-to-float v1, v1

    .line 281
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    int-to-float v2, v2

    .line 280
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 282
    .local v0, "tra":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 283
    sget v1, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->ANIMALTION_TIME:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 285
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mClosedAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 287
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mUp_down:I

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    :goto_1
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    .line 294
    iput-object v4, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBottomView:Landroid/widget/ImageView;

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private prepareLayout()V
    .locals 14

    .prologue
    const/16 v13, 0x3e8

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 171
    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowIsAdd:Z

    if-eqz v6, :cond_1

    .line 172
    sget-object v6, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->TAG:Ljava/lang/String;

    const-string v7, "container view has already been added to the window manager!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->removeAllViews()V

    .line 177
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    .line 177
    invoke-direct {v2, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v2, "fp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mUp_down:I

    if-nez v6, :cond_2

    .line 180
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v10, v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    :goto_1
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderView:Landroid/view/View;

    invoke-virtual {v6, v7, v2}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 188
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 192
    .local v4, "srceen":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenwidth:I

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    invoke-static {v4, v10, v10, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 193
    .local v5, "top":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    .line 194
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 195
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 195
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    .line 197
    invoke-direct {v3, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v3, "ft":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v3}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenwidth:I

    .line 204
    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenheigh:I

    iget v9, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    sub-int/2addr v8, v9

    .line 203
    invoke-static {v4, v10, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, "bottom":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBottomView:Landroid/widget/ImageView;

    .line 206
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBottomView:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 206
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 209
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenheigh:I

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    sub-int/2addr v6, v7

    .line 208
    invoke-direct {v1, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v1, "fb":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v1, v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v1}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-boolean v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowIsAdd:Z

    if-nez v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iput-boolean v12, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mWindowIsAdd:Z

    goto/16 :goto_0

    .line 182
    .end local v0    # "bottom":Landroid/graphics/Bitmap;
    .end local v1    # "fb":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "ft":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "srceen":Landroid/graphics/Bitmap;
    .end local v5    # "top":Landroid/graphics/Bitmap;
    :cond_2
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    invoke-virtual {v2, v10, v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1
.end method

.method private startOpenAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 221
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mUp_down:I

    if-nez v1, :cond_0

    .line 223
    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    .line 224
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsetyLast:I

    .line 225
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    int-to-float v1, v1

    .line 226
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsetyLast:I

    int-to-float v2, v2

    .line 225
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 227
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    sget v1, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->ANIMALTION_TIME:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 229
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 230
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mTopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    :goto_0
    return-void

    .line 235
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_0
    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    .line 236
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsetyLast:I

    .line 237
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    int-to-float v1, v1

    .line 238
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsetyLast:I

    int-to-float v2, v2

    .line 237
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 239
    .restart local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 240
    sget v1, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->ANIMALTION_TIME:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 241
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 242
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOpenAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 243
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBottomView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public isOpened()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mIsOpened:Z

    return v0
.end method

.method public openFolderView(Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "backgroundView"    # Landroid/view/View;
    .param p3, "folderView"    # Landroid/view/View;
    .param p4, "folderH"    # I
    .param p5, "up_down"    # I

    .prologue
    const/4 v2, 0x1

    .line 145
    iput p5, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mUp_down:I

    .line 146
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mBackgroundView:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mContext:Landroid/content/Context;

    int-to-float v1, p4

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    .line 148
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderView:Landroid/view/View;

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenwidth:I

    .line 150
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mSrceenheigh:I

    .line 153
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mAnchorLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 154
    if-nez p5, :cond_0

    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mAnchorLocation:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    .line 156
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderUpY:I

    .line 157
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderDownY:I

    .line 165
    :goto_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->prepareLayout()V

    .line 166
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->startOpenAnimation()V

    .line 167
    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mAnchorLocation:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    .line 161
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderUpY:I

    .line 162
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->offsety:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderheigh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mFolderDownY:I

    goto :goto_0
.end method

.method public setmOnFolderClosedListener(Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;)V
    .locals 0
    .param p1, "onFolderClosedListener"    # Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->mOnFolderClosedListener:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OnFolderClosedListener;

    .line 72
    return-void
.end method
