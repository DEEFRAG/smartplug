.class public Lcom/kankunit/smartplugcronus/customview/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private defaultColor:I

.field private defaultHeight:I

.field private defaultWidth:I

.field private mBorderInsideColor:I

.field private mBorderOutsideColor:I

.field private mBorderThickness:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    .line 25
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    .line 26
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    .line 28
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    .line 29
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    .line 33
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    .line 25
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    .line 26
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    .line 28
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    .line 29
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    .line 38
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->setCustomAttributes(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    .line 25
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    .line 26
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    .line 28
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    .line 29
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    .line 44
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0, p2}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->setCustomAttributes(Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "radius"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 192
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 194
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 197
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    return-void
.end method

.method private setCustomAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mContext:Landroid/content/Context;

    .line 50
    sget-object v2, Lcom/kankunit/smartplugcronus/R$styleable;->roundedimageview:[I

    .line 49
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    .line 54
    const/4 v1, 0x2

    .line 55
    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 53
    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    .line 57
    const/4 v1, 0x1

    iget v2, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    .line 58
    return-void
.end method


# virtual methods
.method public getCroppedRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 128
    mul-int/lit8 v7, p2, 0x2

    .line 131
    .local v7, "diameter":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 132
    .local v5, "bmpWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 133
    .local v4, "bmpHeight":I
    const/4 v14, 0x0

    .local v14, "squareWidth":I
    const/4 v13, 0x0

    .line 134
    .local v13, "squareHeight":I
    const/4 v15, 0x0

    .local v15, "x":I
    const/16 v16, 0x0

    .line 136
    .local v16, "y":I
    if-le v4, v5, :cond_1

    .line 137
    move v13, v5

    move v14, v5

    .line 138
    const/4 v15, 0x0

    .line 139
    sub-int v17, v4, v5

    div-int/lit8 v16, v17, 0x2

    .line 141
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1, v14, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 153
    .local v12, "squareBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v7, :cond_0

    .line 154
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v7, :cond_3

    .line 156
    :cond_0
    const/16 v17, 0x1

    .line 155
    move/from16 v0, v17

    invoke-static {v12, v7, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 161
    .local v11, "scaledSrcBmp":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 162
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 161
    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 163
    .local v8, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 167
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 166
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 169
    .local v10, "rect":Landroid/graphics/Rect;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 171
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 172
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 173
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 174
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 173
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    const/16 p1, 0x0

    .line 183
    const/4 v12, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    return-object v8

    .line 143
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "output":Landroid/graphics/Bitmap;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "scaledSrcBmp":Landroid/graphics/Bitmap;
    .end local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-ge v4, v5, :cond_2

    .line 144
    move v13, v4

    move v14, v4

    .line 145
    sub-int v17, v5, v4

    div-int/lit8 v15, v17, 0x2

    .line 146
    const/16 v16, 0x0

    .line 147
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1, v14, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 149
    .restart local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 150
    .end local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v12, p1

    .restart local v12    # "squareBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 159
    :cond_3
    move-object v11, v12

    .restart local v11    # "scaledSrcBmp":Landroid/graphics/Bitmap;
    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 118
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->getHeight()I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {p0, v6, v6}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->measure(II)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/graphics/drawable/NinePatchDrawable;

    if-eq v5, v6, :cond_0

    .line 73
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    if-nez v5, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    .line 79
    :cond_2
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    if-nez v5, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    .line 88
    :cond_3
    const/4 v3, 0x0

    .line 89
    .local v3, "radius":I
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    if-eq v5, v6, :cond_5

    .line 90
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    if-eq v5, v6, :cond_5

    .line 91
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    if-ge v5, v6, :cond_4

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    :goto_1
    div-int/lit8 v5, v5, 0x2

    .line 92
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    mul-int/lit8 v6, v6, 0x2

    .line 91
    sub-int v3, v5, v6

    .line 94
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    .line 95
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    .line 94
    invoke-direct {p0, p1, v5, v6}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    .line 97
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    add-int/2addr v5, v3

    .line 98
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    .line 97
    invoke-direct {p0, p1, v5, v6}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    .line 115
    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->getCroppedRoundBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 116
    .local v4, "roundBitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    int-to-float v5, v5

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    .line 117
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 92
    .end local v4    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    goto :goto_1

    .line 99
    :cond_5
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    if-eq v5, v6, :cond_7

    .line 100
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    if-ne v5, v6, :cond_7

    .line 101
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    if-ge v5, v6, :cond_6

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    :goto_3
    div-int/lit8 v5, v5, 0x2

    .line 102
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    .line 101
    sub-int v3, v5, v6

    .line 103
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    .line 104
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    .line 103
    invoke-direct {p0, p1, v5, v6}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    goto :goto_2

    .line 102
    :cond_6
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    goto :goto_3

    .line 105
    :cond_7
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderInsideColor:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    if-ne v5, v6, :cond_9

    .line 106
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultColor:I

    if-eq v5, v6, :cond_9

    .line 107
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    if-ge v5, v6, :cond_8

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    :goto_4
    div-int/lit8 v5, v5, 0x2

    .line 108
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    .line 107
    sub-int v3, v5, v6

    .line 109
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderThickness:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    .line 110
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->mBorderOutsideColor:I

    .line 109
    invoke-direct {p0, p1, v5, v6}, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;II)V

    goto :goto_2

    .line 108
    :cond_8
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    goto :goto_4

    .line 112
    :cond_9
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    if-ge v5, v6, :cond_a

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultWidth:I

    :goto_5
    div-int/lit8 v3, v5, 0x2

    goto :goto_2

    .line 113
    :cond_a
    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/RoundImageView;->defaultHeight:I

    goto :goto_5
.end method
