.class public Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;
.super Landroid/view/SurfaceView;
.source "SuperPowerBarChart.java"

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

.field private xTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    .line 22
    const/16 v0, 0x384

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    .line 24
    const v0, 0x7f0a00e9

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->maxHeight:I

    .line 62
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->initContent()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    .line 22
    const/16 v0, 0x384

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    .line 24
    const v0, 0x7f0a00e9

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->maxHeight:I

    .line 72
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->initContent()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    .line 22
    const/16 v0, 0x384

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    .line 24
    const v0, 0x7f0a00e9

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->maxHeight:I

    .line 67
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->initContent()V

    .line 68
    return-void
.end method

.method private drawBars(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 19
    .param p1, "mCanvas"    # Landroid/graphics/Canvas;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v1, 0x0

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    return-void

    .line 96
    :cond_1
    move-object/from16 v16, p2

    .line 97
    .local v16, "tempStr":Ljava/lang/String;
    const-string v1, "%"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 98
    .local v17, "tempStrs":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v1, v17, v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    const/high16 v12, 0x3f800000    # 1.0f

    .line 104
    .local v12, "maxPower":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    if-lt v11, v1, :cond_2

    .line 115
    const/high16 v1, 0x43fa0000    # 500.0f

    div-float v15, v1, v12

    .line 116
    .local v15, "proportion":F
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_0

    .line 117
    if-nez v11, :cond_5

    .line 116
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 105
    .end local v15    # "proportion":F
    :cond_2
    if-nez v11, :cond_4

    .line 104
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 108
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    aget-object v1, v1, v11

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, "powerInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v14, v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "dateInfo":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v13, v8, v1

    .line 111
    .local v13, "power":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v12

    if-lez v1, :cond_3

    .line 112
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    int-to-float v12, v1

    goto :goto_3

    .line 121
    .end local v8    # "dateInfo":[Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v14    # "powerInfo":[Ljava/lang/String;
    .restart local v15    # "proportion":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    aget-object v1, v1, v11

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 122
    .restart local v14    # "powerInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v14, v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 123
    .restart local v8    # "dateInfo":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v13, v8, v1

    .line 124
    .restart local v13    # "power":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v8, v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v10, v1, v2

    .line 126
    .local v10, "hour":Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "e"

    invoke-static {v13, v1, v2}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getData(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "dt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    move/from16 v18, v0

    .line 128
    .local v18, "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    int-to-float v1, v1

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->maxHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v18, v0

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v2

    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v4, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v4

    mul-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v4

    const v4, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v4

    mul-int/2addr v4, v11

    const v5, 0x7f0a0096

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->pointPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v2

    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    add-int/lit8 v2, v18, -0xd

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    const-string v1, "Degrees"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/lit8 v2, v2, -0x28

    const v3, 0x7f0a00ee

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a00ef

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "bottomTxt":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v11, v1, :cond_6

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Month"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->deviceData:[Ljava/lang/String;

    array-length v1, v1

    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v2

    const v2, 0x7f0a0093

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v2

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    const v3, 0x7f0a0083

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private getPxFromResource(I)I
    .locals 1
    .param p1, "dimenId"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getResources()Landroid/content/res/Resources;

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

    .line 27
    const v0, 0x7f0a0094

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mX:I

    .line 29
    const v0, 0x7f0a00e3

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->bottomY:I

    .line 30
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->setZOrderOnTop(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mHolder:Landroid/view/SurfaceHolder;

    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 34
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->pointPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->pointPaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006a

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->textPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->xTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    const v1, 0x7f0a006d

    invoke-direct {p0, v1}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->getPxFromResource(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->setFocusable(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public mDraw(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xff

    .line 148
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mCanvas:Landroid/graphics/Canvas;

    .line 151
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 159
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0, p1}, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->drawBars(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/SuperPowerBarChart;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 168
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 85
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 173
    return-void
.end method
