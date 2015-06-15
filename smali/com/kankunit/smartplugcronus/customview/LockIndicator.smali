.class public Lcom/kankunit/smartplugcronus/customview/LockIndicator;
.super Landroid/view/View;
.source "LockIndicator.java"


# instance fields
.field private f:I

.field private g:I

.field private lockPassStr:Ljava/lang/String;

.field private numColum:I

.field private numRow:I

.field private paint:Landroid/graphics/Paint;

.field private patternHeight:I

.field private patternNoraml:Landroid/graphics/drawable/Drawable;

.field private patternPressed:Landroid/graphics/drawable/Drawable;

.field private patternWidth:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numRow:I

    .line 20
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numColum:I

    .line 21
    iput v3, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    .line 22
    iput v3, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    .line 23
    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->f:I

    .line 24
    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->g:I

    .line 25
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->strokeWidth:I

    .line 26
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    .line 27
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x28

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numRow:I

    .line 20
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numColum:I

    .line 21
    iput v4, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    .line 22
    iput v4, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    .line 23
    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->f:I

    .line 24
    iput v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->g:I

    .line 25
    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->strokeWidth:I

    .line 26
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    .line 27
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    .line 45
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    .line 46
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->f:I

    .line 47
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->g:I

    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 82
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numRow:I

    if-ge v1, v5, :cond_0

    .line 60
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numColum:I

    if-lt v4, v5, :cond_2

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->paint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    mul-int/2addr v5, v4

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->g:I

    mul-int/2addr v6, v4

    add-int v2, v5, v6

    .line 63
    .local v2, "i1":I
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->f:I

    mul-int/2addr v6, v1

    add-int v3, v5, v6

    .line 64
    .local v3, "i2":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 66
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numColum:I

    mul-int/2addr v5, v1

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "curNum":Ljava/lang/String;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->lockPassStr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 68
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->lockPassStr:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 70
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    :cond_3
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 77
    :cond_4
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternNoraml:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numColum:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->g:I

    .line 88
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numColum:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numRow:I

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->patternWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->f:I

    .line 89
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->numRow:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->setMeasuredDimension(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->lockPassStr:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->invalidate()V

    .line 99
    return-void
.end method
