.class public final Lcom/mining/app/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_WIDTH:I = 0xa

.field private static final MIDDLE_LINE_PADDING:I = 0x5

.field private static final MIDDLE_LINE_WIDTH:I = 0x6

.field private static final OPAQUE:I = 0xff

.field private static final SPEEN_DISTANCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "log"

.field private static final TEXT_PADDING_TOP:I = 0x1e

.field private static final TEXT_SIZE:I = 0x10

.field private static density:F


# instance fields
.field private ScreenRate:I

.field isFirst:Z

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private slideBottom:I

.field private slideTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    .line 121
    const/high16 v1, 0x41a00000    # 20.0f

    sget v2, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    .line 123
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 124
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->maskColor:I

    .line 126
    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultColor:I

    .line 128
    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultPointColor:I

    .line 129
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 130
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 251
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->invalidate()V

    .line 252
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 239
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->invalidate()V

    .line 240
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    invoke-static {}, Lcom/mining/app/zxing/camera/CameraManager;->get()Lcom/mining/app/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mining/app/zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 136
    .local v9, "frame":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 235
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->isFirst:Z

    if-nez v0, :cond_1

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->isFirst:Z

    .line 143
    iget v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    .line 144
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideBottom:I

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    .line 149
    .local v12, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 151
    .local v10, "height":I
    iget-object v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v12

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    const/4 v1, 0x0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v12

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    .line 158
    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 157
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    const/4 v1, 0x0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v12

    int-to-float v4, v10

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 151
    :cond_2
    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 172
    iget v0, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 171
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 174
    iget v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget v0, v9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    .line 176
    iget v0, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 175
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 178
    iget v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 177
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 180
    iget v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 181
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 182
    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    iget v0, v9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    .line 184
    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 183
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/mining/app/zxing/view/ViewfinderView;->ScreenRate:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 186
    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 185
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 190
    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    .line 191
    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4

    .line 192
    iget v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    .line 194
    :cond_4
    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v3, v0

    iget v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->slideTop:I

    add-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    sget v2, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 200
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const-string v1, "System"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 202
    invoke-virtual {p0}, Lcom/mining/app/zxing/view/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0295

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    sget v4, Lcom/mining/app/zxing/view/ViewfinderView;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    iget-object v8, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 207
    .local v8, "currentPossible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    iget-object v7, p0, Lcom/mining/app/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 208
    .local v7, "currentLast":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 220
    :cond_5
    if-eqz v7, :cond_6

    .line 221
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 231
    :cond_6
    const-wide/16 v1, 0xa

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    .line 232
    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/mining/app/zxing/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0

    .line 211
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 212
    iput-object v8, p0, Lcom/mining/app/zxing/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 213
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 214
    iget-object v0, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mining/app/zxing/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/ResultPoint;

    .line 216
    .local v11, "point":Lcom/google/zxing/ResultPoint;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 217
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    iget-object v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 216
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 223
    .end local v11    # "point":Lcom/google/zxing/ResultPoint;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/ResultPoint;

    .line 224
    .restart local v11    # "point":Lcom/google/zxing/ResultPoint;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 225
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/mining/app/zxing/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
