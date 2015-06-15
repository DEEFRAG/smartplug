.class public Lcom/kankunit/smartplugcronus/customview/GestureDrawline;
.super Landroid/view/View;
.source "GestureDrawline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;,
        Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;
    }
.end annotation


# instance fields
.field private autoCheckPointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kankunit/smartplugcronus/customview/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private bitmap:Landroid/graphics/Bitmap;

.field private callBack:Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;

.field private canvas:Landroid/graphics/Canvas;

.field private currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

.field private isDrawEnable:Z

.field private isVerify:Z

.field private lineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/kankunit/smartplugcronus/customview/GesturePoint;",
            "Lcom/kankunit/smartplugcronus/customview/GesturePoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/customview/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mov_x:I

.field private mov_y:I

.field private paint:Landroid/graphics/Paint;

.field private passWord:Ljava/lang/String;

.field private passWordSb:Ljava/lang/StringBuilder;

.field private screenDispaly:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isVerify"    # Z
    .param p4, "passWord"    # Ljava/lang/String;
    .param p5, "callBack"    # Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/customview/GesturePoint;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->isDrawEnable:Z

    .line 70
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/AppUtil;->getScreenDispaly(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->screenDispaly:[I

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->screenDispaly:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->screenDispaly:[I

    aget v1, v1, v3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->bitmap:Landroid/graphics/Bitmap;

    .line 73
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    const/16 v2, 0xff

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->list:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    .line 83
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->initAutoCheckPointMap()V

    .line 84
    iput-object p5, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->callBack:Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;

    .line 87
    iput-boolean p3, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->isVerify:Z

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    .line 89
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWord:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->clearScreenAndDrawList()V

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->isDrawEnable:Z

    return-void
.end method

.method private clearScreenAndDrawList()V
    .locals 8

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 294
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 294
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 295
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    .line 296
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    .line 295
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawErrorPathTip()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 305
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    const/16 v2, 0xff

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->invalidate()V

    .line 313
    return-void

    .line 306
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 307
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    .line 308
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    .line 309
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    .line 310
    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    .line 309
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBetweenCheckPoint(Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;)Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    .locals 5
    .param p1, "pointStart"    # Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    .param p2, "pointEnd"    # Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v2

    .line 279
    .local v2, "startNum":I
    invoke-virtual {p2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v0

    .line 280
    .local v0, "endNum":I
    const/4 v1, 0x0

    .line 281
    .local v1, "key":Ljava/lang/String;
    if-ge v2, v0, :cond_0

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    return-object v3

    .line 284
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .line 106
    .local v0, "point":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method private getPointAt(II)Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 254
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 274
    const/4 v2, 0x0

    :cond_1
    return-object v2

    .line 254
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .line 256
    .local v2, "point":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getLeftX()I

    move-result v1

    .line 257
    .local v1, "leftX":I
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getRightX()I

    move-result v3

    .line 258
    .local v3, "rightX":I
    if-lt p1, v1, :cond_0

    if-ge p1, v3, :cond_0

    .line 263
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getTopY()I

    move-result v4

    .line 264
    .local v4, "topY":I
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getBottomY()I

    move-result v0

    .line 265
    .local v0, "bottomY":I
    if-lt p2, v4, :cond_0

    if-lt p2, v0, :cond_1

    goto :goto_0
.end method

.method private initAutoCheckPointMap()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "1,3"

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "1,7"

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "1,9"

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "2,8"

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "3,7"

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "3,9"

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "4,6"

    invoke-direct {p0, v3}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->autoCheckPointMap:Ljava/util/Map;

    const-string v1, "7,9"

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getGesturePointByNum(I)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method


# virtual methods
.method public clearDrawlineState(J)V
    .locals 2
    .param p1, "delayTime"    # J

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->isDrawEnable:Z

    .line 221
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->drawErrorPathTip()V

    .line 223
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$clearStateRunnable;-><init>(Lcom/kankunit/smartplugcronus/customview/GestureDrawline;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    .line 123
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->isDrawEnable:Z

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v11

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x99

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->mov_x:I

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->mov_y:I

    .line 133
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->mov_x:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->mov_y:I

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getPointAt(II)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->invalidate()V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->clearScreenAndDrawList()V

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getPointAt(II)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v10

    .line 147
    .local v10, "pointAt":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    if-nez v0, :cond_3

    if-eqz v10, :cond_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    if-nez v0, :cond_4

    .line 152
    iput-object v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    .line 154
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v0, v11}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    :cond_4
    if-eqz v10, :cond_5

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v0, v10}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getPointState()I

    move-result v0

    if-ne v11, v0, :cond_6

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    :goto_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->invalidate()V

    goto/16 :goto_0

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getCenterY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    invoke-virtual {v10, v11}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    .line 169
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-direct {p0, v0, v10}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->getBetweenCheckPoint(Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;)Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    move-result-object v6

    .line 170
    .local v6, "betweenPoint":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getPointState()I

    move-result v0

    if-eq v11, v0, :cond_7

    .line 172
    new-instance v8, Landroid/util/Pair;

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-direct {v8, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .local v8, "pair1":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .local v9, "pair2":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v6, v11}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->setPointState(I)V

    .line 181
    iput-object v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    goto :goto_1

    .line 183
    .end local v8    # "pair1":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    .end local v9    # "pair2":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    :cond_7
    new-instance v7, Landroid/util/Pair;

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    invoke-direct {v7, v0, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->lineList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;->getNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    iput-object v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->currentPoint:Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    goto :goto_1

    .line 193
    .end local v6    # "betweenPoint":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/kankunit/smartplugcronus/customview/GesturePoint;Lcom/kankunit/smartplugcronus/customview/GesturePoint;>;"
    .end local v10    # "pointAt":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    :pswitch_2
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->isVerify:Z

    if-eqz v0, :cond_9

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->callBack:Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;

    invoke-interface {v0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;->checkedSuccess()V

    goto/16 :goto_0

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->callBack:Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;

    invoke-interface {v0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;->checkedFail()V

    goto/16 :goto_0

    .line 204
    :cond_9
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->callBack:Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->passWordSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;->onGestureCodeInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
