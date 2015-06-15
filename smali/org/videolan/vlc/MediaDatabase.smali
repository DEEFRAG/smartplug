.class public Lorg/videolan/vlc/MediaDatabase;
.super Ljava/lang/Object;
.source "MediaDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;,
        Lorg/videolan/vlc/MediaDatabase$mediaColumn;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$videolan$vlc$MediaDatabase$mediaColumn:[I = null

.field public static final TAG:Ljava/lang/String; = "VLC/MediaDatabase"

.field private static instance:Lorg/videolan/vlc/MediaDatabase;


# instance fields
.field private final CHUNK_SIZE:I

.field private final DB_NAME:Ljava/lang/String;

.field private final DB_VERSION:I

.field private final DIR_ROW_PATH:Ljava/lang/String;

.field private final DIR_TABLE_NAME:Ljava/lang/String;

.field private final MEDIA_ALBUM:Ljava/lang/String;

.field private final MEDIA_ARTIST:Ljava/lang/String;

.field private final MEDIA_ARTWORKURL:Ljava/lang/String;

.field private final MEDIA_AUDIOTRACK:Ljava/lang/String;

.field private final MEDIA_GENRE:Ljava/lang/String;

.field private final MEDIA_HEIGHT:Ljava/lang/String;

.field private final MEDIA_LENGTH:Ljava/lang/String;

.field private final MEDIA_LOCATION:Ljava/lang/String;

.field private final MEDIA_PICTURE:Ljava/lang/String;

.field private final MEDIA_SPUTRACK:Ljava/lang/String;

.field private final MEDIA_TABLE_NAME:Ljava/lang/String;

.field private final MEDIA_TIME:Ljava/lang/String;

.field private final MEDIA_TITLE:Ljava/lang/String;

.field private final MEDIA_TYPE:Ljava/lang/String;

.field private final MEDIA_WIDTH:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_ID:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_MEDIAPATH:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_PLAYLISTNAME:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_TABLE_NAME:Ljava/lang/String;

.field private final PLAYLIST_NAME:Ljava/lang/String;

.field private final PLAYLIST_TABLE_NAME:Ljava/lang/String;

.field private final SEARCHHISTORY_DATE:Ljava/lang/String;

.field private final SEARCHHISTORY_KEY:Ljava/lang/String;

.field private final SEARCHHISTORY_TABLE_NAME:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static synthetic $SWITCH_TABLE$org$videolan$vlc$MediaDatabase$mediaColumn()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lorg/videolan/vlc/MediaDatabase;->$SWITCH_TABLE$org$videolan$vlc$MediaDatabase$mediaColumn:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->values()[Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_ALBUM:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_ARTIST:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_ARTWORKURL:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_AUDIOTRACK:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_GENRE:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_HEIGHT:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_LENGTH:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_PATH:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_PICTURE:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_SPUTRACK:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_TABLE_NAME:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_TIME:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_TITLE:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_TYPE:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_WIDTH:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lorg/videolan/vlc/MediaDatabase;->$SWITCH_TABLE$org$videolan$vlc$MediaDatabase$mediaColumn:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v1, "vlc_database"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->DB_NAME:Ljava/lang/String;

    .line 54
    const/16 v1, 0x8

    iput v1, p0, Lorg/videolan/vlc/MediaDatabase;->DB_VERSION:I

    .line 55
    const/16 v1, 0x32

    iput v1, p0, Lorg/videolan/vlc/MediaDatabase;->CHUNK_SIZE:I

    .line 57
    const-string v1, "directories_table"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->DIR_TABLE_NAME:Ljava/lang/String;

    .line 58
    const-string v1, "path"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->DIR_ROW_PATH:Ljava/lang/String;

    .line 60
    const-string v1, "media_table"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_TABLE_NAME:Ljava/lang/String;

    .line 61
    const-string v1, "location"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_LOCATION:Ljava/lang/String;

    .line 62
    const-string v1, "time"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_TIME:Ljava/lang/String;

    .line 63
    const-string v1, "length"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_LENGTH:Ljava/lang/String;

    .line 64
    const-string v1, "type"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_TYPE:Ljava/lang/String;

    .line 65
    const-string v1, "picture"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_PICTURE:Ljava/lang/String;

    .line 66
    const-string v1, "title"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_TITLE:Ljava/lang/String;

    .line 67
    const-string v1, "artist"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_ARTIST:Ljava/lang/String;

    .line 68
    const-string v1, "genre"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_GENRE:Ljava/lang/String;

    .line 69
    const-string v1, "album"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_ALBUM:Ljava/lang/String;

    .line 70
    const-string v1, "width"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_WIDTH:Ljava/lang/String;

    .line 71
    const-string v1, "height"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_HEIGHT:Ljava/lang/String;

    .line 72
    const-string v1, "artwork_url"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_ARTWORKURL:Ljava/lang/String;

    .line 73
    const-string v1, "audio_track"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_AUDIOTRACK:Ljava/lang/String;

    .line 74
    const-string v1, "spu_track"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->MEDIA_SPUTRACK:Ljava/lang/String;

    .line 76
    const-string v1, "playlist_table"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->PLAYLIST_TABLE_NAME:Ljava/lang/String;

    .line 77
    const-string v1, "name"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->PLAYLIST_NAME:Ljava/lang/String;

    .line 79
    const-string v1, "playlist_media_table"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->PLAYLIST_MEDIA_TABLE_NAME:Ljava/lang/String;

    .line 80
    const-string v1, "id"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->PLAYLIST_MEDIA_ID:Ljava/lang/String;

    .line 81
    const-string v1, "playlist_name"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->PLAYLIST_MEDIA_PLAYLISTNAME:Ljava/lang/String;

    .line 82
    const-string v1, "media_path"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->PLAYLIST_MEDIA_MEDIAPATH:Ljava/lang/String;

    .line 84
    const-string v1, "searchhistory_table"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->SEARCHHISTORY_TABLE_NAME:Ljava/lang/String;

    .line 85
    const-string v1, "date"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->SEARCHHISTORY_DATE:Ljava/lang/String;

    .line 86
    const-string v1, "key"

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->SEARCHHISTORY_KEY:Ljava/lang/String;

    .line 101
    new-instance v0, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;-><init>(Lorg/videolan/vlc/MediaDatabase;Landroid/content/Context;)V

    .line 102
    .local v0, "helper":Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;
    invoke-virtual {v0}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/videolan/vlc/MediaDatabase;
    .locals 3

    .prologue
    .line 106
    const-class v1, Lorg/videolan/vlc/MediaDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/videolan/vlc/MediaDatabase;->instance:Lorg/videolan/vlc/MediaDatabase;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lorg/videolan/vlc/MediaDatabase;

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/videolan/vlc/MediaDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/videolan/vlc/MediaDatabase;->instance:Lorg/videolan/vlc/MediaDatabase;

    .line 109
    :cond_0
    sget-object v0, Lorg/videolan/vlc/MediaDatabase;->instance:Lorg/videolan/vlc/MediaDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getMediaFiles()Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v10, "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 331
    const-string v1, "media_table"

    .line 332
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    .line 333
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 330
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 334
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    .end local v9    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-object v10

    .line 327
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized mediaDirExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "directories_table"

    .line 621
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    .line 622
    const-string v3, "path=?"

    .line 623
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 624
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 620
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 625
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 626
    .local v9, "exists":Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return v9

    .line 620
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "exists":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setPicture(Lorg/videolan/libvlc/Media;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "m"    # Lorg/videolan/libvlc/Media;
    .param p1, "p"    # Landroid/graphics/Bitmap;

    .prologue
    .line 674
    const-string v1, "VLC/MediaDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting new picture for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v1

    .line 677
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 678
    sget-object v3, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->MEDIA_PICTURE:Lorg/videolan/vlc/MediaDatabase$mediaColumn;

    .line 676
    invoke-virtual {v1, v2, v3, p1}, Lorg/videolan/vlc/MediaDatabase;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/MediaDatabase$mediaColumn;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/videolan/libvlc/Media;->setPictureParsed(Z)V

    .line 684
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "VLC/MediaDatabase"

    const-string v2, "SQLiteFullException while setting picture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addDir(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/videolan/vlc/MediaDatabase;->mediaDirExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "directories_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    monitor-exit p0

    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addMedia(Lorg/videolan/libvlc/Media;)V
    .locals 4
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "location"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "time"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v1, "length"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const-string v1, "type"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v1, "title"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "artist"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "genre"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "album"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "width"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v1, "height"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v1, "artwork_url"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getArtworkURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "audio_track"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getAudioTrack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v1, "spu_track"

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getSpuTrack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    iget-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "media_table"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 279
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addMediaToPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "playlist_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "media_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public addPlaylist(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "playlist_table"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 253
    return-void
.end method

.method public declared-synchronized addSearchhistoryItem(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 637
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 638
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v3, "date"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v3, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "searchhistory_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 636
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clearSearchHistory()V
    .locals 4

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "searchhistory_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deletePlaylist(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist_table"

    const-string v2, "name=?"

    .line 257
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public declared-synchronized emptyDatabase()V
    .locals 4

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMedia(Ljava/lang/String;)Lorg/videolan/libvlc/Media;
    .locals 21
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 442
    monitor-enter p0

    const/16 v20, 0x0

    .line 445
    .local v20, "media":Lorg/videolan/libvlc/Media;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 446
    const-string v2, "media_table"

    .line 447
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 448
    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 449
    const-string v5, "length"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 450
    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 451
    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 452
    const-string v5, "artist"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 453
    const-string v5, "genre"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 454
    const-string v5, "album"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    .line 455
    const-string v5, "width"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 456
    const-string v5, "height"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 457
    const-string v5, "artwork_url"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    .line 458
    const-string v5, "audio_track"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    .line 459
    const-string v5, "spu_track"

    aput-object v5, v3, v4

    .line 461
    const-string v4, "location=?"

    .line 462
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 463
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 445
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 468
    .local v18, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    new-instance v1, Lorg/videolan/libvlc/Media;

    .line 470
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 471
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 472
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 473
    const/4 v8, 0x0

    .line 474
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 475
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 476
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 477
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 478
    const/4 v2, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 479
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 480
    const/16 v2, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 481
    const/16 v2, 0xa

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 482
    const/16 v2, 0xb

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move-object/from16 v2, p1

    .line 469
    invoke-direct/range {v1 .. v17}, Lorg/videolan/libvlc/Media;-><init>(Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .end local v20    # "media":Lorg/videolan/libvlc/Media;
    .local v1, "media":Lorg/videolan/libvlc/Media;
    :goto_0
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    .line 485
    .end local v18    # "cursor":Landroid/database/Cursor;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 464
    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    .restart local v20    # "media":Lorg/videolan/libvlc/Media;
    :catch_0
    move-exception v19

    .line 466
    .local v19, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    move-object v2, v1

    move-object/from16 v1, v20

    .end local v20    # "media":Lorg/videolan/libvlc/Media;
    .restart local v1    # "media":Lorg/videolan/libvlc/Media;
    goto :goto_1

    .line 442
    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    .end local v19    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "media":Lorg/videolan/libvlc/Media;
    :catchall_0
    move-exception v2

    move-object/from16 v1, v20

    .end local v20    # "media":Lorg/videolan/libvlc/Media;
    .restart local v1    # "media":Lorg/videolan/libvlc/Media;
    :goto_2
    monitor-exit p0

    throw v2

    .restart local v18    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    .restart local v20    # "media":Lorg/videolan/libvlc/Media;
    :cond_0
    move-object/from16 v1, v20

    .end local v20    # "media":Lorg/videolan/libvlc/Media;
    .restart local v1    # "media":Lorg/videolan/libvlc/Media;
    goto :goto_0
.end method

.method public declared-synchronized getMediaDirs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v10, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 604
    const-string v1, "directories_table"

    .line 605
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    .line 606
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 603
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 607
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 608
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v9, "dir":Ljava/io/File;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    .end local v9    # "dir":Ljava/io/File;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-object v10

    .line 600
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMedias()Ljava/util/HashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v22, "medias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/libvlc/Media;>;"
    const/16 v19, 0x0

    .line 351
    .local v19, "chunk_count":I
    const/16 v20, 0x0

    .line 354
    .local v20, "count":I
    :cond_0
    const/16 v20, 0x0

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 356
    const-string v6, "SELECT %s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s FROM %s LIMIT %d OFFSET %d"

    const/16 v7, 0x10

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 357
    const-string v9, "time"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 358
    const-string v9, "length"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 359
    const-string v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 360
    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 361
    const-string v9, "artist"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    .line 362
    const-string v9, "genre"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    .line 363
    const-string v9, "album"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    .line 364
    const-string v9, "width"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    .line 365
    const-string v9, "height"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    .line 366
    const-string v9, "artwork_url"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    .line 367
    const-string v9, "audio_track"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    .line 368
    const-string v9, "spu_track"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    .line 369
    const-string v9, "location"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    .line 370
    const-string v9, "media_table"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    .line 371
    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xf

    .line 372
    mul-int/lit8 v9, v19, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 355
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 372
    const/4 v6, 0x0

    .line 355
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 374
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    :cond_1
    const/16 v4, 0xc

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "location":Ljava/lang/String;
    new-instance v2, Lorg/videolan/libvlc/Media;

    .line 378
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 379
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 380
    const/4 v8, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 381
    const/4 v9, 0x0

    .line 382
    const/4 v10, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 383
    const/4 v11, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 384
    const/4 v12, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 385
    const/4 v13, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 386
    const/4 v14, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 387
    const/16 v15, 0x8

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 388
    const/16 v16, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 389
    const/16 v17, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 390
    const/16 v18, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 377
    invoke-direct/range {v2 .. v18}, Lorg/videolan/libvlc/Media;-><init>(Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    .line 391
    .local v2, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    add-int/lit8 v20, v20, 0x1

    .line 394
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    add-int/lit8 v19, v19, 0x1

    .line 399
    const/16 v4, 0x32

    move/from16 v0, v20

    if-eq v0, v4, :cond_0

    .line 401
    monitor-exit p0

    return-object v22

    .line 349
    .end local v19    # "chunk_count":I
    .end local v20    # "count":I
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "medias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/libvlc/Media;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getPicture(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 491
    monitor-enter p0

    const/4 v11, 0x0

    .line 494
    .local v11, "picture":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 495
    const-string v1, "media_table"

    .line 496
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "picture"

    aput-object v4, v2, v3

    .line 497
    const-string v3, "location=?"

    .line 498
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 499
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 494
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 500
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 502
    .local v8, "blob":[B
    if-eqz v8, :cond_0

    array-length v0, v8

    if-le v0, v12, :cond_0

    array-length v0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v1, 0x7a120

    if-ge v0, v1, :cond_0

    .line 504
    const/4 v0, 0x0

    :try_start_1
    array-length v1, v8

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 512
    .end local v8    # "blob":[B
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    monitor-exit p0

    return-object v11

    .line 505
    .restart local v8    # "blob":[B
    :catch_0
    move-exception v10

    .line 506
    .local v10, "e":Ljava/lang/OutOfMemoryError;
    const/4 v11, 0x0

    .line 508
    const/4 v8, 0x0

    goto :goto_0

    .line 507
    .end local v10    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v0

    .line 508
    const/4 v8, 0x0

    .line 509
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 491
    .end local v8    # "blob":[B
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlaylists()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 227
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v9, "playlists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 231
    const-string v1, "playlist_table"

    .line 232
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 230
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 241
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSearchhistory(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v10, "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "searchhistory_table"

    .line 649
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    .line 650
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 651
    const-string v7, "date DESC"

    .line 652
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 648
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 654
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-object v10

    .line 655
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoTimes(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x32

    .line 407
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v6, "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 409
    .local v0, "chunk_count":I
    const/4 v1, 0x0

    .line 412
    .local v1, "count":I
    :cond_0
    const/4 v1, 0x0

    .line 413
    iget-object v7, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 414
    const-string v9, "SELECT %s,%s FROM %s WHERE %s=%d LIMIT %d OFFSET %d"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 415
    const-string v12, "location"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 416
    const-string v12, "time"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 417
    const-string v12, "media_table"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 418
    const-string v12, "type"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    .line 419
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 420
    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    .line 421
    mul-int/lit8 v12, v0, 0x32

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 413
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 421
    const/4 v9, 0x0

    .line 413
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 423
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 425
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "location":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 427
    .local v4, "time":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    add-int/lit8 v1, v1, 0x1

    .line 429
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 432
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    add-int/lit8 v0, v0, 0x1

    .line 434
    if-eq v1, v13, :cond_0

    .line 436
    monitor-exit p0

    return-object v6

    .line 407
    .end local v0    # "chunk_count":I
    .end local v1    # "count":I
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized mediaItemExists(Ljava/lang/String;)Z
    .locals 12
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    .line 307
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    .line 308
    const-string v3, "location=?"

    .line 309
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 310
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 306
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 311
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 312
    .local v10, "exists":Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "exists":Z
    :goto_0
    monitor-exit p0

    return v10

    .line 314
    :catch_0
    move-exception v9

    .line 315
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "VLC/MediaDatabase"

    const-string v1, "Query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v10, v11

    .line 316
    goto :goto_0

    .line 306
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDir(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "directories_table"

    const-string v2, "path=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMedia(Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const-string v2, "location=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMediaFromPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist_media_table"

    .line 268
    const-string v2, "playlist_name=? media_path=?"

    .line 270
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public removeMedias(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "locations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 523
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    iget-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    iget-object v1, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 529
    return-void

    .line 523
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    .local v0, "location":Ljava/lang/String;
    iget-object v2, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "media_table"

    const-string v4, "location=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 526
    .end local v0    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 527
    iget-object v2, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    throw v1
.end method

.method public declared-synchronized updateMedia(Ljava/lang/String;Lorg/videolan/vlc/MediaDatabase$mediaColumn;Ljava/lang/Object;)V
    .locals 9
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "col"    # Lorg/videolan/vlc/MediaDatabase$mediaColumn;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 534
    monitor-enter p0

    if-nez p1, :cond_0

    .line 570
    .end local p3    # "object":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-void

    .line 537
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->$SWITCH_TABLE$org$videolan$vlc$MediaDatabase$mediaColumn()[I

    move-result-object v4

    invoke-virtual {p2}, Lorg/videolan/vlc/MediaDatabase$mediaColumn;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 551
    :sswitch_0
    if-eqz p3, :cond_1

    .line 552
    const-string v4, "time"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/videolan/vlc/MediaDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "media_table"

    const-string v6, "location=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 540
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local p3    # "object":Ljava/lang/Object;
    :sswitch_1
    if-eqz p3, :cond_2

    .line 541
    :try_start_1
    move-object v0, p3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    .line 542
    .local v2, "picture":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 543
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 544
    const-string v4, "picture"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 547
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "picture":Landroid/graphics/Bitmap;
    :cond_2
    const-string v4, "picture"

    const/4 v5, 0x1

    new-array v5, v5, [B

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 555
    :sswitch_2
    if-eqz p3, :cond_1

    .line 556
    const-string v4, "audio_track"

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 559
    .restart local p3    # "object":Ljava/lang/Object;
    :sswitch_3
    if-eqz p3, :cond_1

    .line 560
    const-string v4, "spu_track"

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 563
    .restart local p3    # "object":Ljava/lang/Object;
    :sswitch_4
    if-eqz p3, :cond_1

    .line 564
    const-string v4, "length"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x6 -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method
