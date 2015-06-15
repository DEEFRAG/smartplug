.class public Lorg/videolan/vlc/MediaGroup;
.super Lorg/videolan/libvlc/Media;
.source "MediaGroup.java"


# static fields
.field public static final MIN_GROUP_LENGTH:I = 0x5

.field public static final TAG:Ljava/lang/String; = "VLC/MediaGroup"


# instance fields
.field private mMedia:Lorg/videolan/libvlc/Media;

.field private mMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/Media;)V
    .locals 19
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getTime()J

    move-result-wide v4

    .line 42
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v6

    .line 43
    const/4 v8, 0x2

    .line 44
    invoke-static/range {p1 .. p1}, Lorg/videolan/vlc/util/BitmapUtil;->getPictureFromCache(Lorg/videolan/libvlc/Media;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 45
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v12

    .line 48
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v13

    .line 49
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getWidth()I

    move-result v14

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getHeight()I

    move-result v15

    .line 51
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getArtworkURL()Ljava/lang/String;

    move-result-object v16

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getAudioTrack()I

    move-result v17

    .line 53
    invoke-virtual/range {p1 .. p1}, Lorg/videolan/libvlc/Media;->getSpuTrack()I

    move-result v18

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v18}, Lorg/videolan/libvlc/Media;-><init>(Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    .line 54
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/MediaGroup;->mMedia:Lorg/videolan/libvlc/Media;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/videolan/vlc/MediaGroup;->mMedias:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public static group(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/videolan/vlc/MediaGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "mediaList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/libvlc/Media;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/MediaGroup;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    return-object v0

    .line 86
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 87
    .local v1, "media":Lorg/videolan/libvlc/Media;
    invoke-static {v0, v1}, Lorg/videolan/vlc/MediaGroup;->insertInto(Ljava/util/ArrayList;Lorg/videolan/libvlc/Media;)V

    goto :goto_0
.end method

.method private static insertInto(Ljava/util/ArrayList;Lorg/videolan/libvlc/Media;)V
    .locals 8
    .param p1, "media"    # Lorg/videolan/libvlc/Media;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/vlc/MediaGroup;",
            ">;",
            "Lorg/videolan/libvlc/Media;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/MediaGroup;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    new-instance v5, Lorg/videolan/vlc/MediaGroup;

    invoke-direct {v5, p1}, Lorg/videolan/vlc/MediaGroup;-><init>(Lorg/videolan/libvlc/Media;)V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/MediaGroup;

    .line 94
    .local v3, "mediaGroup":Lorg/videolan/vlc/MediaGroup;
    invoke-virtual {v3}, Lorg/videolan/vlc/MediaGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "group":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "item":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 99
    .local v0, "commonLength":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 100
    .local v4, "minLength":I
    :goto_1
    if-ge v0, v4, :cond_2

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 104
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v0, v6, :cond_4

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaGroup;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 105
    invoke-virtual {v3, p1}, Lorg/videolan/vlc/MediaGroup;->add(Lorg/videolan/libvlc/Media;)V

    goto :goto_0

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_4
    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v0, v6, :cond_5

    invoke-virtual {v3}, Lorg/videolan/vlc/MediaGroup;->size()I

    move-result v6

    if-nez v6, :cond_0

    :cond_5
    const/4 v6, 0x5

    if-le v0, v6, :cond_0

    .line 108
    const/4 v5, 0x0

    invoke-interface {v1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lorg/videolan/vlc/MediaGroup;->merge(Lorg/videolan/libvlc/Media;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/videolan/libvlc/Media;)V
    .locals 1
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getFirstMedia()Lorg/videolan/libvlc/Media;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/videolan/vlc/MediaGroup;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedia:Lorg/videolan/libvlc/Media;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedias:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/Media;

    goto :goto_0
.end method

.method public getMedia()Lorg/videolan/libvlc/Media;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/videolan/vlc/MediaGroup;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/videolan/vlc/MediaGroup;->mMedia:Lorg/videolan/libvlc/Media;

    .end local p0    # "this":Lorg/videolan/vlc/MediaGroup;
    :cond_0
    return-object p0
.end method

.method public merge(Lorg/videolan/libvlc/Media;Ljava/lang/String;)V
    .locals 2
    .param p1, "media"    # Lorg/videolan/libvlc/Media;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/videolan/vlc/MediaGroup;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedias:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/videolan/vlc/MediaGroup;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedia:Lorg/videolan/libvlc/Media;

    .line 80
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iput-object p2, p0, Lorg/videolan/vlc/MediaGroup;->mTitle:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/videolan/vlc/MediaGroup;->mMedias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
