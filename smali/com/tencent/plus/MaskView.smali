.class public Lcom/tencent/plus/MaskView;
.super Landroid/view/View;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "MaskView"

    sput-object v0, Lcom/tencent/plus/MaskView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/tencent/plus/MaskView;->b()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/tencent/plus/MaskView;->b()V

    .line 32
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/plus/MaskView;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/MaskView;->b:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0}, Lcom/tencent/plus/MaskView;->getMeasuredWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/tencent/plus/MaskView;->getMeasuredHeight()I

    move-result v1

    .line 83
    add-int/lit8 v2, v1, -0x3c

    add-int/lit8 v2, v2, -0x50

    .line 86
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    const/16 v3, 0x280

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 95
    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 96
    add-int v3, v0, v2

    .line 97
    add-int/2addr v2, v1

    .line 101
    iget-object v4, p0, Lcom/tencent/plus/MaskView;->b:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/tencent/plus/MaskView;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p0}, Lcom/tencent/plus/MaskView;->a()Landroid/graphics/Rect;

    move-result-object v6

    .line 45
    invoke-virtual {p0}, Lcom/tencent/plus/MaskView;->getMeasuredWidth()I

    move-result v7

    .line 46
    invoke-virtual {p0}, Lcom/tencent/plus/MaskView;->getMeasuredHeight()I

    move-result v8

    .line 49
    iget-object v0, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    int-to-float v3, v7

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    int-to-float v3, v7

    int-to-float v4, v8

    iget-object v5, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 62
    iget-object v0, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/plus/MaskView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    return-void
.end method
