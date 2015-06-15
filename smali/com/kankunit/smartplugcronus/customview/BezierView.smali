.class public Lcom/kankunit/smartplugcronus/customview/BezierView;
.super Landroid/view/SurfaceView;
.source "BezierView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private controlX:I

.field private controlY:I

.field private endX:I

.field private endY:I

.field private flag:Z

.field private paint:Landroid/graphics/Paint;

.field private paintQ:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private random:Ljava/util/Random;

.field private sfh:Landroid/view/SurfaceHolder;

.field private startX:I

.field private startY:I

.field private th:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->flag:Z

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/BezierView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->sfh:Landroid/view/SurfaceHolder;

    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->sfh:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->path:Landroid/graphics/Path;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paintQ:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paintQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paintQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paintQ:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paintQ:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    return-void
.end method

.method private logic()V
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endY:I

    if-eqz v0, :cond_0

    .line 97
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endX:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->startX:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->controlX:I

    .line 98
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endY:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->startY:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->controlY:I

    .line 100
    :cond_0
    return-void
.end method

.method private myDraw()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->sfh:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->canvas:Landroid/graphics/Canvas;

    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->canvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/BezierView;->drawQpath(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->sfh:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 67
    return-void
.end method


# virtual methods
.method public drawQpath(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->startX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->startY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->controlX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->controlY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endY:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paintQ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->startX:I

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->startY:I

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endX:I

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->endY:I

    .line 91
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x32

    .line 112
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->flag:Z

    if-nez v5, :cond_1

    .line 128
    return-void

    .line 113
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 114
    .local v3, "startTime":J
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/BezierView;->myDraw()V

    .line 115
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/BezierView;->logic()V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 117
    .local v1, "endTime":J
    sub-long v5, v1, v3

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 119
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sub-long v5, v1, v3

    sub-long v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 49
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x1

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->th:Ljava/lang/Thread;

    .line 57
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->flag:Z

    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->th:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/BezierView;->flag:Z

    .line 106
    return-void
.end method
