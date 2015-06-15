.class public Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v1, 0x7f090042

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundColor:I

    .line 31
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundProgressColor:I

    .line 33
    const v1, 0x7f090011

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textColor:I

    .line 35
    const/high16 v1, 0x41900000    # 18.0f

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textSize:F

    .line 37
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundWidth:F

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 64
    sget-object v1, Lcom/kankunit/smartplugcronus/R$styleable;->RoundProgressBar:[I

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const v2, -0xff0100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textColor:I

    .line 69
    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textSize:F

    .line 71
    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    .line 73
    iput-boolean v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textIsDisplayable:Z

    .line 74
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->style:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 85
    .local v6, "centre":I
    int-to-float v0, v6

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundWidth:F

    div-float/2addr v3, v11

    sub-float/2addr v0, v3

    float-to-int v8, v0

    .line 86
    .local v8, "radius":I
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    int-to-float v0, v6

    int-to-float v3, v6

    int-to-float v5, v8

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    const-string v0, "log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textSize:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 98
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->progress:I

    int-to-float v0, v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v7, v0

    .line 99
    .local v7, "percent":I
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 101
    .local v9, "textWidth":F
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textIsDisplayable:Z

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->style:I

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, v6

    div-float v5, v9, v11

    sub-float/2addr v3, v5

    int-to-float v5, v6

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textSize:F

    div-float/2addr v10, v11

    add-float/2addr v5, v10

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v8

    int-to-float v0, v0

    sub-int v3, v6, v8

    int-to-float v3, v3

    .line 109
    add-int v5, v6, v8

    int-to-float v5, v5

    add-int v10, v6, v8

    int-to-float v10, v10

    .line 108
    invoke-direct {v1, v0, v3, v5, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 111
    .local v1, "oval":Landroid/graphics/RectF;
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->style:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->progress:I

    if-eqz v0, :cond_1

    .line 120
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0
    .param p1, "cricleColor"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundColor:I

    .line 164
    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0
    .param p1, "cricleProgressColor"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundProgressColor:I

    .line 172
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 133
    monitor-enter p0

    if-gez p1, :cond_0

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 144
    monitor-enter p0

    if-gez p1, :cond_0

    .line 145
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 148
    iget p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    .line 150
    :cond_1
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_2

    .line 151
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->progress:I

    .line 152
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 195
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->roundWidth:F

    .line 196
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textColor:I

    .line 180
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundProgressBar;->textSize:F

    .line 188
    return-void
.end method
