.class public Lorg/videolan/vlc/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/videolan/vlc/util/Util;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPx(I)I
    .locals 3
    .param p0, "dp"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    int-to-float v1, p0

    .line 60
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 59
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static convertPxToDp(I)I
    .locals 4
    .param p0, "px"    # I

    .prologue
    .line 51
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 52
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .local v1, "logicalDensity":F
    int-to-float v3, p0

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 54
    .local v0, "dp":I
    return v0
.end method

.method public static generateViewId()I
    .locals 3

    .prologue
    .line 142
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lorg/videolan/vlc/util/Util;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 144
    add-int/lit8 v0, v1, 0x1

    .line 145
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 146
    :cond_1
    sget-object v2, Lorg/videolan/vlc/util/Util;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    return v1
.end method

.method public static getOrCreateMedia(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)Lorg/videolan/libvlc/Media;
    .locals 2
    .param p0, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/videolan/vlc/MediaLibrary;->getMediaItem(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v0

    .line 95
    .local v0, "mlItem":Lorg/videolan/libvlc/Media;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/videolan/libvlc/Media;

    .end local v0    # "mlItem":Lorg/videolan/libvlc/Media;
    invoke-direct {v0, p0, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 97
    .restart local v0    # "mlItem":Lorg/videolan/libvlc/Media;
    :cond_0
    return-object v0
.end method

.method public static getResourceFromAttribute(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 109
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return v1
.end method

.method public static readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "assetName"    # Ljava/lang/String;
    .param p1, "defaultS"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 67
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF8"

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    .local v3, "r":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 73
    :goto_0
    if-nez v2, :cond_1

    .line 79
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "defaultS":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 74
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "defaultS":Ljava/lang/String;
    :cond_1
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 80
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static setAlignModeByPref(ILandroid/widget/TextView;)V
    .locals 2
    .param p0, "alignMode"    # I
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 123
    if-ne p0, v1, :cond_1

    .line 124
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 126
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 128
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method public static toaster(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method
