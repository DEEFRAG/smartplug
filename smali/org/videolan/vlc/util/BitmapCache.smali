.class public Lorg/videolan/vlc/util/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "VLC/BitmapCache"

.field private static mInstance:Lorg/videolan/vlc/util/BitmapCache;


# instance fields
.field private final mMemCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, "context":Landroid/content/Context;
    const-string v3, "activity"

    .line 54
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 55
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 58
    .local v2, "memClass":I
    const/high16 v3, 0x100000

    mul-int/2addr v3, v2

    div-int/lit8 v0, v3, 0x5

    .line 60
    .local v0, "cacheSize":I
    const-string v3, "VLC/BitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LRUCache size sets to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v3, Lorg/videolan/vlc/util/BitmapCache$1;

    invoke-direct {v3, p0, v0}, Lorg/videolan/vlc/util/BitmapCache$1;-><init>(Lorg/videolan/vlc/util/BitmapCache;I)V

    iput-object v3, p0, Lorg/videolan/vlc/util/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    .line 70
    return-void
.end method

.method public static GetFromResource(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 102
    invoke-static {}, Lorg/videolan/vlc/util/BitmapCache;->getInstance()Lorg/videolan/vlc/util/BitmapCache;

    move-result-object v1

    .line 103
    .local v1, "cache":Lorg/videolan/vlc/util/BitmapCache;
    invoke-direct {v1, p1}, Lorg/videolan/vlc/util/BitmapCache;->getBitmapFromMemCache(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    invoke-direct {v1, p1, v0}, Lorg/videolan/vlc/util/BitmapCache;->addBitmapToMemCache(ILandroid/graphics/Bitmap;)V

    .line 108
    :cond_0
    return-object v0
.end method

.method private addBitmapToMemCache(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "res:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/videolan/vlc/util/BitmapCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 95
    return-void
.end method

.method private getBitmapFromMemCache(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "res:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/util/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/videolan/vlc/util/BitmapCache;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/videolan/vlc/util/BitmapCache;->mInstance:Lorg/videolan/vlc/util/BitmapCache;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/videolan/vlc/util/BitmapCache;

    invoke-direct {v0}, Lorg/videolan/vlc/util/BitmapCache;-><init>()V

    sput-object v0, Lorg/videolan/vlc/util/BitmapCache;->mInstance:Lorg/videolan/vlc/util/BitmapCache;

    .line 44
    :cond_0
    sget-object v0, Lorg/videolan/vlc/util/BitmapCache;->mInstance:Lorg/videolan/vlc/util/BitmapCache;

    return-object v0
.end method


# virtual methods
.method public addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/util/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/videolan/vlc/util/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/videolan/vlc/util/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 99
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v1, p0, Lorg/videolan/vlc/util/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 76
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/videolan/vlc/util/BitmapCache;->mMemCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    .line 81
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method
