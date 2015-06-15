.class public Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;
    }
.end annotation


# instance fields
.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v6, 0x0

    .line 51
    .local v6, "i":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 53
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    .local v7, "m":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/InputStream;

    move-object v6, v0

    .line 56
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "bis":Ljava/io/BufferedInputStream;
    move-object v1, v2

    .line 63
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "m":Ljava/net/URL;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :goto_0
    const-string v8, "src"

    invoke-static {v1, v8}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 64
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    return-object v3

    .line 57
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v5

    .line 58
    .local v5, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v5    # "e1":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    .line 60
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public loadDrawable(Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageCallback"    # Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;

    .prologue
    .line 24
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 26
    .local v2, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 27
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 45
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v1, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;-><init>(Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V

    .line 36
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$2;-><init>(Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V

    .line 44
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$2;->start()V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method
