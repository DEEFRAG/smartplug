.class public Lcom/tencent/open/AsynLoadImg;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/open/AsynLoadImgBack;

.field private f:J

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "share_qq_"

    iput-object v0, p0, Lcom/tencent/open/AsynLoadImg;->b:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/tencent/open/k;

    invoke-direct {v0, p0}, Lcom/tencent/open/k;-><init>(Lcom/tencent/open/AsynLoadImg;)V

    iput-object v0, p0, Lcom/tencent/open/AsynLoadImg;->h:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/tencent/open/AsynLoadImg;->a:Landroid/app/Activity;

    .line 49
    new-instance v0, Lcom/tencent/open/l;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/open/l;-><init>(Lcom/tencent/open/AsynLoadImg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/open/AsynLoadImg;->g:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 120
    const-string v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getbitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 128
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 129
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 133
    const-string v1, "AsynLoadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image download finished."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    const-string v0, "AsynLoadImg"

    const-string v1, "getbitmap bmp fail---"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/AsynLoadImg;)Lcom/tencent/open/AsynLoadImgBack;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/open/AsynLoadImg;->d:Lcom/tencent/open/AsynLoadImgBack;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/open/AsynLoadImg;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/open/AsynLoadImg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/open/AsynLoadImg;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/open/AsynLoadImg;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/open/AsynLoadImg;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/open/AsynLoadImg;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/tencent/open/AsynLoadImg;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/open/AsynLoadImgBack;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const-string v0, "AsynLoadImg"

    const-string v1, "--save---"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p2, v0, v2}, Lcom/tencent/open/AsynLoadImgBack;->saved(ILjava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/tencent/open/Util;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    const/4 v0, 0x2

    invoke-interface {p2, v0, v2}, Lcom/tencent/open/AsynLoadImgBack;->saved(ILjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/AsynLoadImg;->e:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/open/AsynLoadImg;->f:J

    .line 78
    iput-object p1, p0, Lcom/tencent/open/AsynLoadImg;->c:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/tencent/open/AsynLoadImg;->d:Lcom/tencent/open/AsynLoadImgBack;

    .line 80
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/open/AsynLoadImg;->h:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/tencent/open/AsynLoadImg;->e:Ljava/lang/String;

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "AsynLoadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 102
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    const-string v0, "AsynLoadImg"

    const-string v1, "saveFile bmp fail---"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method
