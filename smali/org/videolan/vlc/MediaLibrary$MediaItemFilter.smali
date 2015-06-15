.class Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;
.super Ljava/lang/Object;
.source "MediaLibrary.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaItemFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "accepted":Z
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 393
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/videolan/libvlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    const/4 v0, 0x1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, "dotIndex":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 399
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "fileExt":Ljava/lang/String;
    sget-object v4, Lorg/videolan/libvlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 401
    sget-object v4, Lorg/videolan/libvlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 400
    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
