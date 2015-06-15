.class public Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;
.super Landroid/view/SurfaceView;
.source "SuperLineChartView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private allHeight:I

.field private bottomY:I

.field private deviceData:[Ljava/lang/String;

.field private linePaint:Landroid/graphics/Paint;

.field private line_ypy:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mX:I

.field private nowpy:I

.field private pointPaint:Landroid/graphics/Paint;

.field private screenW:I

.field private textPaint:Landroid/graphics/Paint;

.field private xTextPaint:Landroid/graphics/Paint;

.field private yTextpy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mX:I

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    .line 36
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    .line 38
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const v1, 0x7f0a00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->nowpy:I

    .line 40
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->yTextpy:I

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->line_ypy:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mX:I

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    .line 36
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    .line 38
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const v1, 0x7f0a00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->nowpy:I

    .line 40
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->yTextpy:I

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->line_ypy:I

    .line 94
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->initContent()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mX:I

    .line 33
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    .line 36
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    .line 38
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const v1, 0x7f0a00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->nowpy:I

    .line 40
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->yTextpy:I

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->line_ypy:I

    .line 89
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->initContent()V

    .line 90
    return-void
.end method

.method private drawInterpolationPoint(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 38
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "flag"    # Ljava/lang/String;
    .param p4, "nowData"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v2, 0x0

    const/16 v3, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-static {v2, v3, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mX:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    int-to-float v4, v2

    .line 109
    const v2, 0x7f0a0064

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v2

    .line 110
    const v5, 0x7f0a0066

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 109
    sub-int/2addr v2, v5

    int-to-float v5, v2

    .line 110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    int-to-float v6, v2

    .line 111
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 108
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v24, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p2, :cond_0

    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    return-void

    .line 123
    :cond_1
    move-object/from16 v28, p2

    .line 124
    .local v28, "tempStr":Ljava/lang/String;
    const-string v2, "%"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 125
    .local v29, "tempStrs":[Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, v29, v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    .line 134
    const-wide/16 v18, 0x0

    .line 135
    .local v18, "maxNum":D
    const-wide/16 v20, 0x0

    .line 136
    .local v20, "minNum":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    array-length v2, v2

    if-lt v13, v2, :cond_7

    .line 175
    const-wide/16 v2, 0x0

    cmpl-double v2, v18, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-nez v2, :cond_2

    .line 176
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    .line 178
    :cond_2
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [D

    move-object/from16 v34, v0

    .line 179
    .local v34, "xs":[D
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [D

    move-object/from16 v35, v0

    .line 181
    .local v35, "ys":[D
    const/4 v13, 0x0

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    if-lt v13, v2, :cond_11

    .line 189
    new-instance v15, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;

    const/4 v2, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v15, v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;-><init>([D[DZ)V

    .line 191
    .local v15, "it":Lcom/kankunit/smartplugcronus/util/InterpolationUtil;
    const/4 v2, 0x0

    aget-wide v26, v34, v2

    .line 192
    .local v26, "startX":D
    const v2, 0x7f0a006e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v25

    .line 193
    .local v25, "slopeRate":I
    const/16 v22, 0x0

    .line 194
    .local v22, "plusVal":I
    const/4 v2, 0x1

    aget-wide v13, v34, v2

    .local v13, "i":D
    :goto_2
    move-object/from16 v0, v34

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v34, v2

    cmpg-double v2, v13, v2

    if-lez v2, :cond_12

    .line 234
    const/16 v23, 0x0

    .line 235
    .local v23, "pointCount1":I
    const/4 v11, 0x0

    .line 236
    .local v11, "first":I
    const/4 v2, 0x0

    aget-wide v13, v34, v2

    :goto_3
    move-object/from16 v0, v34

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v34, v2

    cmpg-double v2, v13, v2

    if-gtz v2, :cond_0

    .line 237
    move/from16 v0, v25

    int-to-double v2, v0

    mul-double/2addr v2, v13

    move/from16 v0, v25

    int-to-double v5, v0

    mul-double v5, v5, v26

    sub-double/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mX:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    add-double/2addr v2, v5

    double-to-int v0, v2

    move/from16 v33, v0

    .line 239
    .local v33, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    int-to-float v2, v2

    invoke-virtual {v15, v13, v14}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation(D)D

    move-result-wide v5

    add-double v5, v5, v20

    sub-double v36, v18, v20

    div-double v5, v5, v36

    double-to-float v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float v4, v2, v3

    .line 263
    .local v4, "y":F
    add-int/lit8 v23, v23, 0x1

    .line 264
    rem-int/lit8 v2, v23, 0x64

    if-nez v2, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v2, v2, v33

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v2, v2, v33

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    div-int/lit8 v3, v23, 0x64

    aget-object v2, v2, v3

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v10, v2, v3

    .line 267
    .local v10, "dt":Ljava/lang/String;
    if-nez v11, :cond_13

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v3, v3, v33

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    const v5, 0x7f0a00da

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->line_ypy:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 273
    const-string v30, ""

    .line 274
    .local v30, "tempY":Ljava/lang/String;
    const-string v2, "hum"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    div-int/lit8 v5, v23, 0x64

    aget-object v3, v3, v5

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v5, 0x0

    const-string v6, "h"

    invoke-static {v3, v5, v6}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 279
    :cond_3
    const-string v2, "temp"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    div-int/lit8 v5, v23, 0x64

    aget-object v3, v3, v5

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const/4 v5, 0x0

    const-string v6, "t"

    invoke-static {v3, v5, v6}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 284
    :cond_4
    const-string v2, "power"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    div-int/lit8 v6, v23, 0x64

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "p"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v2, v2, v33

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0xb

    sub-int/2addr v2, v3

    const v3, 0x7f0a00da

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->yTextpy:I

    int-to-float v3, v3

    sub-float v3, v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->xTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202a0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 289
    .local v16, "mBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v2, v2, v33

    const v3, 0x7f0a0072

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0072

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->pointPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    .end local v10    # "dt":Ljava/lang/String;
    .end local v16    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v30    # "tempY":Ljava/lang/String;
    :cond_6
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v13, v2

    goto/16 :goto_3

    .line 140
    .end local v4    # "y":F
    .end local v11    # "first":I
    .end local v15    # "it":Lcom/kankunit/smartplugcronus/util/InterpolationUtil;
    .end local v22    # "plusVal":I
    .end local v23    # "pointCount1":I
    .end local v25    # "slopeRate":I
    .end local v26    # "startX":D
    .end local v33    # "x":I
    .end local v34    # "xs":[D
    .end local v35    # "ys":[D
    .local v13, "i":I
    :cond_7
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v17, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->deviceData:[Ljava/lang/String;

    aget-object v2, v2, v13

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 142
    .local v32, "temperatureInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v32, v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "dateInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "dateDetails":[Ljava/lang/String;
    const-string v12, ""

    .line 145
    .local v12, "hour":Ljava/lang/String;
    const-string v2, "electricity"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 146
    const/4 v2, 0x1

    aget-object v12, v8, v2

    .line 150
    :goto_5
    const/4 v2, 0x1

    aget-object v31, v9, v2

    .line 151
    .local v31, "temperature":Ljava/lang/String;
    const-string v2, "temp"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 152
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x0

    const-string v5, "t"

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 154
    :cond_8
    const-string v2, "hum"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 155
    const/4 v2, 0x2

    aget-object v2, v9, v2

    const/4 v3, 0x0

    const-string v5, "h"

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 157
    :cond_9
    const-string v2, "electricity"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x0

    const-string v5, "e"

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 160
    :cond_a
    if-nez v13, :cond_b

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b

    .line 161
    const/4 v2, 0x0

    const-string v3, "h"

    move-object/from16 v0, p4

    invoke-static {v0, v2, v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 163
    :cond_b
    const-string v2, "hour"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "x"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "temperature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v31, :cond_c

    const-string v2, "null"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_c
    const-string v2, "0"

    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "t"

    invoke-static {v2, v5, v6}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v18

    if-lez v2, :cond_d

    .line 168
    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 170
    :cond_d
    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v2, v2, v20

    if-gez v2, :cond_e

    .line 171
    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 136
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 148
    .end local v31    # "temperature":Ljava/lang/String;
    :cond_f
    const/4 v2, 0x3

    aget-object v12, v8, v2

    goto/16 :goto_5

    .restart local v31    # "temperature":Ljava/lang/String;
    :cond_10
    move-object/from16 v2, v31

    .line 165
    goto :goto_6

    .line 182
    .end local v8    # "dateDetails":[Ljava/lang/String;
    .end local v9    # "dateInfo":[Ljava/lang/String;
    .end local v12    # "hour":Ljava/lang/String;
    .end local v17    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v31    # "temperature":Ljava/lang/String;
    .end local v32    # "temperatureInfo":[Ljava/lang/String;
    .restart local v34    # "xs":[D
    .restart local v35    # "ys":[D
    :cond_11
    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 183
    .restart local v17    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "x"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 184
    .restart local v33    # "x":I
    const-string v2, "temperature"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 186
    .local v4, "y":I
    move/from16 v0, v33

    int-to-double v2, v0

    aput-wide v2, v34, v13

    .line 187
    int-to-double v2, v4

    aput-wide v2, v35, v13

    .line 181
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 223
    .end local v4    # "y":I
    .end local v17    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v33    # "x":I
    .local v13, "i":D
    .restart local v15    # "it":Lcom/kankunit/smartplugcronus/util/InterpolationUtil;
    .restart local v22    # "plusVal":I
    .restart local v25    # "slopeRate":I
    .restart local v26    # "startX":D
    :cond_12
    add-int/lit8 v22, v22, 0x1

    .line 227
    move/from16 v0, v25

    int-to-double v2, v0

    mul-double/2addr v2, v13

    move/from16 v0, v25

    int-to-double v5, v0

    mul-double v5, v5, v26

    sub-double/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mX:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    add-double/2addr v2, v5

    double-to-int v0, v2

    move/from16 v33, v0

    .line 230
    .restart local v33    # "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    int-to-float v2, v2

    invoke-virtual {v15, v13, v14}, Lcom/kankunit/smartplugcronus/util/InterpolationUtil;->linearInterpolation(D)D

    move-result-wide v5

    add-double v5, v5, v20

    sub-double v36, v18, v20

    div-double v5, v5, v36

    double-to-float v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float v4, v2, v3

    .line 231
    .local v4, "y":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v2, v2, v33

    int-to-float v2, v2

    const v3, 0x7f0a006f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->pointPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 194
    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v13, v2

    goto/16 :goto_2

    .line 270
    .restart local v10    # "dt":Ljava/lang/String;
    .restart local v11    # "first":I
    .restart local v23    # "pointCount1":I
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    sub-int v3, v3, v33

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    const v5, 0x7f0a00da

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->line_ypy:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method private getPxFromResource(I)I
    .locals 1
    .param p1, "dimenId"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initContent()V
    .locals 7

    .prologue
    const v6, 0x7f0a006c

    const v5, 0x7f0a006b

    const v4, 0x7f09002d

    const v3, -0x777778

    const/4 v2, 0x1

    .line 45
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setZOrderOnTop(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mHolder:Landroid/view/SurfaceHolder;

    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->pointPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->pointPaint:Landroid/graphics/Paint;

    .line 54
    const v1, 0x7f0a006a

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    .line 59
    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    .line 61
    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->xTextPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->xTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->xTextPaint:Landroid/graphics/Paint;

    .line 67
    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->xTextPaint:Landroid/graphics/Paint;

    .line 69
    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->xTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    .line 76
    const v1, 0x7f0a006d

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->setFocusable(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public mDraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "nowData"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0a0069

    const/4 v0, 0x0

    const/16 v2, 0xff

    .line 297
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mCanvas:Landroid/graphics/Canvas;

    .line 302
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 326
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 306
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 307
    const-string v0, "hum"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    const v1, 0x7f0a00dd

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    .line 310
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    .line 313
    :cond_1
    const-string v0, "temp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    const v1, 0x7f0a00de

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->allHeight:I

    .line 316
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    .line 319
    :cond_2
    const-string v0, "power"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    const v1, 0x7f0a00d9

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->bottomY:I

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->drawInterpolationPoint(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 326
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 332
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperLineChartView;->screenW:I

    .line 100
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 337
    return-void
.end method
