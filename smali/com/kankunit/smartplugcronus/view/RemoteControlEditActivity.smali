.class public Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;
.super Landroid/app/Activity;
.source "RemoteControlEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final BTNTYPE1:Ljava/lang/String; = "btntype1"

.field public static final BTNTYPE2:Ljava/lang/String; = "btntype2"

.field public static final BTNTYPE3:Ljava/lang/String; = "btntype3"

.field public static final BTNTYPE4:Ljava/lang/String; = "btntype4"

.field public static final BTNTYPE5:Ljava/lang/String; = "btntype5"

.field public static final BTNTYPE6:Ljava/lang/String; = "btntype6"

.field public static final BTNTYPE7:Ljava/lang/String; = "btntype7"

.field public static final BTNTYPE8:Ljava/lang/String; = "btntype8"


# instance fields
.field private btnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dragview:Landroid/widget/AbsoluteLayout;

.field private layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field private listX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragImageView:Landroid/widget/ImageView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private meshList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private okBtn:Landroid/widget/Button;

.field private okBtn1:Landroid/widget/Button;

.field private okBtn2:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->btnMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->listX:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->listY:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private createDragImage(Landroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    .line 234
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 235
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 236
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 237
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 238
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 239
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 240
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 241
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 242
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 245
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->btnMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private createSquareImage(Landroid/graphics/Bitmap;IIII)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 259
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 260
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 261
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 262
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 263
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 264
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 265
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 266
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 267
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 270
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    .line 272
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    return-void
.end method

.method private generatorContactCountIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x4a

    const/4 v9, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x1050000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    .line 109
    .local v5, "iconSize":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, "contactIcon":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .local v4, "iconPaint":Landroid/graphics/Paint;
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 114
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 115
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .local v6, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v3, "dst":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    const/16 v7, 0x101

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    .local v2, "countPaint":Landroid/graphics/Paint;
    const/high16 v7, -0x10000

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 123
    const-string v7, "1"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v11, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x50

    const/16 v4, 0x14

    const/4 v8, 0x5

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->setContentView(I)V

    .line 67
    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->okBtn:Landroid/widget/Button;

    .line 68
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v3, 0x64

    const/16 v5, 0xc8

    invoke-direct {v0, v9, v9, v3, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->okBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const v0, 0x7f07013d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->dragview:Landroid/widget/AbsoluteLayout;

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->dragview:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, p0}, Landroid/widget/AbsoluteLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    const v0, 0x7f07013f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->okBtn1:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->okBtn1:Landroid/widget/Button;

    const-string v3, "1000"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->okBtn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    const/4 v2, 0x0

    .local v2, "countx":I
    :goto_0
    const/16 v0, 0x3e8

    if-le v2, v0, :cond_0

    .line 106
    return-void

    .line 94
    :cond_0
    const/4 v6, 0x0

    .local v6, "county":I
    :goto_1
    const/16 v0, 0x4b0

    if-le v6, v0, :cond_1

    .line 93
    add-int/lit16 v2, v2, 0xfa

    goto :goto_0

    .line 95
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v7, "meshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "x"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "y"

    add-int/lit16 v3, v6, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    add-int/lit16 v3, v6, 0x12c

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->createSquareImage(Landroid/graphics/Bitmap;IIII)V

    .line 94
    add-int/lit16 v6, v6, 0xc8

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 130
    .local v4, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 131
    .local v20, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 135
    .local v21, "y":F
    if-nez v4, :cond_2

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_0

    .line 143
    const/16 v22, 0x1

    .line 230
    :goto_0
    return v22

    .line 145
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    const-string v23, "1000"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 146
    const/16 v22, 0x50

    const/16 v23, 0x50

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 147
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v23, v0

    const-string v24, "1000"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->createDragImage(Landroid/graphics/Bitmap;IILjava/lang/String;)V

    .line 230
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 152
    :cond_2
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    const-string v23, "1000"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 154
    const/4 v13, 0x0

    .line 155
    .local v13, "movex":I
    const/4 v14, 0x0

    .line 160
    .local v14, "movey":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 174
    .end local v13    # "movex":I
    .end local v14    # "movey":I
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_1

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_4

    .line 180
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 182
    :cond_4
    const/16 v18, 0x0

    .line 183
    .local v18, "stopX":I
    const/16 v19, 0x0

    .line 184
    .local v19, "stopY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v18

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mDragImageView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 185
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 186
    .local v10, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v22, "x"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 187
    .local v11, "meshX":I
    const-string v22, "y"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 188
    .local v12, "meshY":I
    if-nez v6, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 190
    .local v17, "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v22, "x"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 191
    .local v15, "nextX":I
    const-string v22, "y"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 192
    .local v16, "nextY":I
    int-to-float v0, v11

    move/from16 v22, v0

    cmpg-float v22, v22, v20

    if-gtz v22, :cond_6

    int-to-float v0, v15

    move/from16 v22, v0

    cmpg-float v22, v20, v22

    if-gtz v22, :cond_6

    .line 193
    move/from16 v18, v11

    .line 195
    :cond_6
    int-to-float v0, v12

    move/from16 v22, v0

    cmpg-float v22, v22, v21

    if-gtz v22, :cond_7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v21, v22

    if-gtz v22, :cond_7

    .line 196
    move/from16 v19, v12

    .line 184
    .end local v15    # "nextX":I
    .end local v16    # "nextY":I
    .end local v17    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 198
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_a

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 200
    .local v9, "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v22, "x"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 201
    .local v7, "lastX":I
    const-string v22, "y"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 202
    .local v8, "lastY":I
    int-to-float v0, v11

    move/from16 v22, v0

    cmpl-float v22, v22, v20

    if-ltz v22, :cond_9

    int-to-float v0, v7

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-ltz v22, :cond_9

    .line 203
    move/from16 v18, v11

    .line 205
    :cond_9
    int-to-float v0, v12

    move/from16 v22, v0

    cmpl-float v22, v22, v21

    if-ltz v22, :cond_7

    int-to-float v0, v8

    move/from16 v22, v0

    cmpl-float v22, v21, v22

    if-ltz v22, :cond_7

    .line 206
    move/from16 v19, v12

    .line 208
    goto :goto_3

    .line 209
    .end local v7    # "lastX":I
    .end local v8    # "lastY":I
    .end local v9    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 210
    .restart local v17    # "nextm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v22, "x"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 211
    .restart local v15    # "nextX":I
    const-string v22, "y"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 212
    .restart local v16    # "nextY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->meshList:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v6, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 213
    .restart local v9    # "lastm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v22, "x"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 214
    .restart local v7    # "lastX":I
    const-string v22, "y"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 215
    .restart local v8    # "lastY":I
    int-to-float v0, v11

    move/from16 v22, v0

    cmpl-float v22, v22, v20

    if-ltz v22, :cond_b

    int-to-float v0, v7

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-gez v22, :cond_c

    :cond_b
    int-to-float v0, v11

    move/from16 v22, v0

    cmpg-float v22, v22, v20

    if-gtz v22, :cond_d

    int-to-float v0, v15

    move/from16 v22, v0

    cmpg-float v22, v20, v22

    if-gtz v22, :cond_d

    .line 216
    :cond_c
    move/from16 v18, v11

    .line 218
    :cond_d
    int-to-float v0, v12

    move/from16 v22, v0

    cmpl-float v22, v22, v21

    if-ltz v22, :cond_e

    int-to-float v0, v8

    move/from16 v22, v0

    cmpl-float v22, v21, v22

    if-gez v22, :cond_f

    :cond_e
    int-to-float v0, v12

    move/from16 v22, v0

    cmpg-float v22, v22, v21

    if-gtz v22, :cond_7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v21, v22

    if-gtz v22, :cond_7

    .line 219
    :cond_f
    move/from16 v19, v12

    goto/16 :goto_3
.end method
