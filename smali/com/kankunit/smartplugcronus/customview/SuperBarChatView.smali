.class public Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;
.super Landroid/view/SurfaceView;
.source "SuperBarChatView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private bottomY:I

.field private deviceData:[Ljava/lang/String;

.field private linePaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mX:I

.field private maxHeight:I

.field private pointPaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;

.field private xTextpaint:Landroid/graphics/Paint;

.field private yTextpy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0a006c

    const v5, 0x7f0a006b

    const v4, 0x7f09002d

    const v3, -0x777778

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    .line 29
    const/16 v0, 0x384

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->yTextpy:I

    .line 37
    const v0, 0x7f0a0081

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    .line 38
    const v0, 0x7f0a0086

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 39
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setZOrderOnTop(Z)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setZOrderOnTop(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006a

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006d

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setFocusable(Z)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setFocusable(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x7f0a006c

    const v5, 0x7f0a006b

    const v4, 0x7f09002d

    const v3, -0x777778

    const/4 v2, 0x1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    .line 29
    const/16 v0, 0x384

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->yTextpy:I

    .line 110
    const v0, 0x7f0a0081

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    .line 111
    const v0, 0x7f0a0086

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 112
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setZOrderOnTop(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006a

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006d

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setFocusable(Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v6, 0x7f0a006c

    const v5, 0x7f0a006b

    const v4, 0x7f09002d

    const v3, -0x777778

    const/4 v2, 0x1

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    .line 29
    const/16 v0, 0x384

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->yTextpy:I

    .line 74
    const v0, 0x7f0a0081

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    .line 75
    const v0, 0x7f0a0086

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 77
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setZOrderOnTop(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    .line 79
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006a

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006d

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->setFocusable(Z)V

    .line 106
    return-void
.end method

.method private drawBars(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "flag"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v1, 0x0

    const/16 v2, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v1, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 159
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v16, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    move-object/from16 v17, p2

    .line 173
    .local v17, "tempStr":Ljava/lang/String;
    const-string v1, "%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 174
    .local v18, "tempStrs":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v1, v18, v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    .line 176
    const/4 v14, 0x1

    .line 177
    .local v14, "maxNum":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    if-lt v12, v1, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    if-lt v12, v1, :cond_5

    .line 254
    const/4 v1, 0x3

    aget-object v15, v18, v1

    .line 255
    .local v15, "pack":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v15    # "pack":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    aget-object v1, v1, v12

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 182
    .local v20, "temperatureInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v20, v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "dateInfo":[Ljava/lang/String;
    const-string v19, ""

    .line 184
    .local v19, "temperature":Ljava/lang/String;
    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    const/4 v1, 0x1

    aget-object v19, v9, v1

    .line 189
    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v14, :cond_3

    .line 190
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 177
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 187
    :cond_4
    const/4 v1, 0x3

    aget-object v19, v9, v1

    goto :goto_3

    .line 207
    .end local v9    # "dateInfo":[Ljava/lang/String;
    .end local v19    # "temperature":Ljava/lang/String;
    .end local v20    # "temperatureInfo":[Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    aget-object v1, v1, v12

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 209
    .restart local v20    # "temperatureInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v20, v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 210
    .restart local v9    # "dateInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v9, v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "dateDetails":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v11, v8, v1

    .line 212
    .local v11, "hour":Ljava/lang/String;
    const-string v19, ""

    .line 213
    .restart local v19    # "temperature":Ljava/lang/String;
    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    const/4 v1, 0x1

    aget-object v19, v9, v1

    .line 219
    :goto_4
    const-string v1, "hour"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "x"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "temperature"

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    int-to-float v3, v1

    .line 225
    .local v3, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    int-to-float v1, v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    int-to-float v4, v14

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->maxHeight:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float v3, v1, v2

    .line 226
    if-nez v12, :cond_7

    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 206
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 216
    .end local v3    # "y":F
    :cond_6
    const/4 v1, 0x3

    aget-object v19, v9, v1

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 230
    .restart local v3    # "y":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v2, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v2

    const v2, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v4, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v4

    mul-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v4

    const v4, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v4

    mul-int/2addr v4, v12

    const v5, 0x7f0a0085

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->pointPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 233
    .local v10, "dt":Ljava/lang/String;
    const-string v1, "lum"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 234
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_8

    const-string v10, "5"

    .line 235
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 240
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v2, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v2

    const v2, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->yTextpy:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "bottomTxt":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 244
    .local v21, "xNum":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_a

    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->deviceData:[Ljava/lang/String;

    array-length v2, v2

    const v4, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v4

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v2, v4

    const v4, 0x7f0a0080

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v4

    mul-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mX:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    const v5, 0x7f0a0083

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->xTextpaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 237
    .end local v7    # "bottomTxt":Ljava/lang/String;
    .end local v21    # "xNum":I
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 246
    .restart local v7    # "bottomTxt":Ljava/lang/String;
    .restart local v21    # "xNum":I
    :cond_a
    if-nez v12, :cond_b

    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    goto/16 :goto_7

    .line 249
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7
.end method

.method private getPxFromResource(I)I
    .locals 1
    .param p1, "dimenId"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public mDraw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0xff

    .line 257
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mCanvas:Landroid/graphics/Canvas;

    .line 259
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 277
    :goto_0
    return v0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 266
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    const-string v0, "lum"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const v0, 0x7f0a0086

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 269
    const v0, 0x7f0a00e8

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->maxHeight:I

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->drawBars(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_2
    const v0, 0x7f0a00e4

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->bottomY:I

    .line 272
    const v0, 0x7f0a00ea

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperBarChatView;->maxHeight:I

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 283
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 156
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 288
    return-void
.end method
