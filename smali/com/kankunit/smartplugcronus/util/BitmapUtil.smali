.class public Lcom/kankunit/smartplugcronus/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 25
    const-class v4, Lcom/kankunit/smartplugcronus/util/BitmapUtil;

    monitor-enter v4

    :try_start_0
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 26
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 27
    .local v2, "width":I
    const/4 v1, 0x1

    .line 29
    .local v1, "inSampleSize":I
    :goto_0
    div-int v3, v2, v1

    if-gt v3, p1, :cond_0

    .line 32
    :goto_1
    div-int v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v3, p2, :cond_1

    .line 35
    monitor-exit v4

    return v1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    .end local v0    # "height":I
    .end local v1    # "inSampleSize":I
    .end local v2    # "width":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized decodeSampledBitmapFromStream(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 15
    const-class v2, Lcom/kankunit/smartplugcronus/util/BitmapUtil;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 16
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 17
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 18
    invoke-static {v0, p1, p2}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 15
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 38
    const-class v3, Lcom/kankunit/smartplugcronus/util/BitmapUtil;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 39
    .local v1, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 41
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 38
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized updateViewBg(Landroid/view/View;Landroid/content/res/Resources;I)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 46
    const-class v5, Lcom/kankunit/smartplugcronus/util/BitmapUtil;

    monitor-enter v5

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 48
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 49
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 50
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 52
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 54
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v4, 0x3e8

    const/16 v6, 0x3e8

    invoke-static {v2, v4, v6}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->decodeSampledBitmapFromStream(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 57
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v5

    return-void

    .line 46
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public decodebitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "imageid"    # I
    .param p3, "scal"    # I

    .prologue
    const/4 v3, 0x1

    .line 62
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 69
    :cond_0
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 73
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 74
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 75
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 78
    goto :goto_0
.end method
