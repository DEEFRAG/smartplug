.class public Lorg/videolan/vlc/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util/BitmapUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropBorders(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v7, -0x1000000

    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, "top":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v5, p2, 0x2

    if-lt v0, v5, :cond_3

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "left":I
    const/4 v0, 0x0

    :goto_1
    div-int/lit8 v5, p1, 0x2

    if-lt v0, v5, :cond_6

    .line 59
    :cond_1
    div-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0xa

    if-ge v1, v5, :cond_2

    div-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, -0xa

    if-lt v4, v5, :cond_9

    .line 63
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    return-object p0

    .line 37
    .end local v1    # "left":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    div-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 38
    .local v2, "pixel1":I
    div-int/lit8 v5, p1, 0x2

    sub-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 39
    .local v3, "pixel2":I
    if-eqz v2, :cond_4

    if-ne v2, v7, :cond_0

    .line 40
    :cond_4
    if-eqz v3, :cond_5

    if-ne v3, v7, :cond_0

    .line 41
    :cond_5
    move v4, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "pixel1":I
    .end local v3    # "pixel2":I
    .restart local v1    # "left":I
    :cond_6
    div-int/lit8 v5, p2, 0x2

    invoke-virtual {p0, v0, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 50
    .restart local v2    # "pixel1":I
    sub-int v5, p1, v0

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v6, p2, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 51
    .restart local v3    # "pixel2":I
    if-eqz v2, :cond_7

    if-ne v2, v7, :cond_1

    .line 52
    :cond_7
    if-eqz v3, :cond_8

    if-ne v3, v7, :cond_1

    .line 53
    :cond_8
    move v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v2    # "pixel1":I
    .end local v3    # "pixel2":I
    :cond_9
    mul-int/lit8 v5, v1, 0x2

    sub-int v5, p1, v5

    mul-int/lit8 v6, v4, 0x2

    sub-int v6, p2, v6

    .line 63
    invoke-static {p0, v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2
.end method

.method public static getPictureFromCache(Lorg/videolan/libvlc/Media;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lorg/videolan/vlc/util/BitmapCache;->getInstance()Lorg/videolan/vlc/util/BitmapCache;

    move-result-object v2

    .line 89
    .local v2, "cache":Lorg/videolan/vlc/util/BitmapCache;
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/videolan/vlc/util/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 90
    .local v3, "picture":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 95
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    .local v1, "c":Landroid/content/Context;
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v4

    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/videolan/vlc/MediaDatabase;->getPicture(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lorg/videolan/vlc/util/BitmapCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 101
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "cache":Lorg/videolan/vlc/util/BitmapCache;
    .end local v3    # "picture":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method

.method public static scaleDownBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 75
    .local v0, "densityMultiplier":F
    int-to-float v3, p2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 76
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    int-to-double v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v1, v3

    .line 77
    .local v1, "h":I
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 79
    .end local v0    # "densityMultiplier":F
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_0
    return-object p1
.end method
