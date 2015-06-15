.class public Lcom/iflytek/cloud/ui/a/f;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Path;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voice_empty"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "voice_full"

    invoke-static {v0, v1}, Lcom/iflytek/cloud/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->a:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/ui/a/f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a/f;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a/f;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a/f;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/ui/a/f;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :cond_0
    invoke-static {v1, p1}, Lcom/iflytek/cloud/ui/a/f;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/iflytek/cloud/ui/a/f;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/ui/a/f;->setMeasuredDimension(II)V

    return-void
.end method
