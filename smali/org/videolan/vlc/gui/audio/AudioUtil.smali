.class public Lorg/videolan/vlc/gui/audio/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field public static ART_DIR:Ljava/lang/String; = null

.field public static CACHE_DIR:Ljava/lang/String; = null

.field public static COVER_DIR:Ljava/lang/String; = null

.field public static PLAYLIST_DIR:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "VLC/AudioUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    sput-object v0, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    .line 67
    sput-object v0, Lorg/videolan/vlc/gui/audio/AudioUtil;->ART_DIR:Ljava/lang/String;

    .line 71
    sput-object v0, Lorg/videolan/vlc/gui/audio/AudioUtil;->COVER_DIR:Ljava/lang/String;

    .line 75
    sput-object v0, Lorg/videolan/vlc/gui/audio/AudioUtil;->PLAYLIST_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCacheFolders()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lorg/videolan/vlc/gui/audio/AudioUtil;->ART_DIR:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    sget-object v4, Lorg/videolan/vlc/gui/audio/AudioUtil;->COVER_DIR:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 140
    .local v0, "file":Ljava/io/File;
    .local v1, "path":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    return-void

    .line 137
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 138
    .restart local v1    # "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-static {v0, v5}, Lorg/videolan/vlc/gui/audio/AudioUtil;->deleteContent(Ljava/io/File;Z)V

    goto :goto_0
.end method

.method private static deleteContent(Ljava/io/File;Z)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "deleteDir"    # Z

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 147
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 151
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 153
    :cond_1
    return-void

    .line 147
    .restart local v1    # "files":[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 148
    .local v0, "file":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/videolan/vlc/gui/audio/AudioUtil;->deleteContent(Ljava/io/File;Z)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lorg/videolan/libvlc/Media;
    .param p2, "width"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 225
    const-class v8, Lorg/videolan/vlc/gui/audio/AudioUtil;

    monitor-enter v8

    const/4 v4, 0x0

    .line 226
    .local v4, "coverPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, "cover":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 229
    .local v2, "cachePath":Ljava/lang/String;
    if-gtz p2, :cond_0

    .line 230
    :try_start_0
    const-string v7, "VLC/AudioUtil"

    const-string v9, "Invalid cover width requested"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v7, 0x0

    .line 280
    :goto_0
    monitor-exit v8

    return-object v7

    .line 235
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasExternalStorage()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 236
    const/4 v7, 0x0

    goto :goto_0

    .line 240
    :cond_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/videolan/vlc/util/MurmurHash;->hash32(Ljava/lang/String;)I

    move-result v6

    .line 241
    .local v6, "hash":I
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v7, Lorg/videolan/vlc/gui/audio/AudioUtil;->COVER_DIR:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ltz v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {}, Lorg/videolan/vlc/util/BitmapCache;->getInstance()Lorg/videolan/vlc/util/BitmapCache;

    move-result-object v0

    .line 245
    .local v0, "cache":Lorg/videolan/vlc/util/BitmapCache;
    invoke-virtual {v0, v2}, Lorg/videolan/vlc/util/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 246
    if-eqz v3, :cond_3

    move-object v7, v3

    .line 247
    goto :goto_0

    .line 241
    .end local v0    # "cache":Lorg/videolan/vlc/util/BitmapCache;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "m"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v10, v6

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 250
    .restart local v0    # "cache":Lorg/videolan/vlc/util/BitmapCache;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "cacheFile":Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_b

    .line 253
    move-object v4, v2

    .line 259
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 260
    :cond_5
    invoke-static {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCoverFromVlc(Landroid/content/Context;Lorg/videolan/libvlc/Media;)Ljava/lang/String;

    move-result-object v4

    .line 263
    :cond_6
    if-eqz v4, :cond_7

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    .line 264
    :cond_7
    invoke-static {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCoverFromFolder(Landroid/content/Context;Lorg/videolan/libvlc/Media;)Ljava/lang/String;

    move-result-object v4

    .line 267
    :cond_8
    if-eqz v4, :cond_9

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    .line 268
    :cond_9
    invoke-static {p0, p1}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCoverFromMediaStore(Landroid/content/Context;Lorg/videolan/libvlc/Media;)Ljava/lang/String;

    move-result-object v4

    .line 271
    :cond_a
    invoke-static {p0, v4, p2}, Lorg/videolan/vlc/gui/audio/AudioUtil;->readCoverBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 274
    invoke-static {v3, v2}, Lorg/videolan/vlc/gui/audio/AudioUtil;->writeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/util/BitmapCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "cache":Lorg/videolan/vlc/util/BitmapCache;
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v6    # "hash":I
    :goto_2
    move-object v7, v3

    .line 280
    goto/16 :goto_0

    .line 255
    .restart local v0    # "cache":Lorg/videolan/vlc/util/BitmapCache;
    .restart local v1    # "cacheFile":Ljava/io/File;
    .restart local v6    # "hash":I
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 277
    .end local v0    # "cache":Lorg/videolan/vlc/util/BitmapCache;
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v6    # "hash":I
    :catch_0
    move-exception v5

    .line 278
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 225
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static getCoverFromFolder(Landroid/content/Context;Lorg/videolan/libvlc/Media;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 213
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/libvlc/LibVlcUtil;->URItoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 220
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 215
    :cond_1
    aget-object v1, v3, v2

    .line 216
    .local v1, "s":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 215
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getCoverFromMediaStore(Landroid/content/Context;Lorg/videolan/libvlc/Media;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 158
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 159
    const-string v3, "album"

    aput-object v3, v2, v10

    .line 160
    const-string v3, "album_art"

    aput-object v3, v2, v4

    .line 161
    const-string v3, "album LIKE ?"

    .line 162
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v6, v5

    .line 174
    :goto_0
    return-object v6

    .line 169
    :cond_1
    const-string v2, "album_art"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 170
    .local v8, "titleColumn":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "albumArt":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getCoverFromVlc(Landroid/content/Context;Lorg/videolan/libvlc/Media;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lorg/videolan/libvlc/Media;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getArtworkURL()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "artworkURL":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v7, "file://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "file://"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 209
    :goto_0
    return-object v7

    .line 181
    :cond_0
    if-eqz v0, :cond_4

    const-string v7, "attachment://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 183
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "mArtist":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "mAlbum":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 188
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0025

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 189
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0026

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    :cond_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 193
    .local v5, "md":Ljava/security/MessageDigest;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 195
    .local v1, "binHash":[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v2, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 196
    .local v2, "hash":Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "titleHash":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_2

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lorg/videolan/vlc/gui/audio/AudioUtil;->ART_DIR:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/arturl/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/art.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "binHash":[B
    .end local v2    # "hash":Ljava/math/BigInteger;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "titleHash":Ljava/lang/String;
    :goto_2
    move-object v7, v0

    .line 207
    goto/16 :goto_0

    .line 198
    .restart local v1    # "binHash":[B
    .restart local v2    # "hash":Ljava/math/BigInteger;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "titleHash":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 204
    .end local v1    # "binHash":[B
    .end local v2    # "hash":Ljava/math/BigInteger;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "titleHash":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lorg/videolan/vlc/gui/audio/AudioUtil;->ART_DIR:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/artistalbum/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/art.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 209
    .end local v3    # "mAlbum":Ljava/lang/String;
    .end local v4    # "mArtist":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static prepareCacheFolder(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lorg/videolan/libvlc/LibVlcUtil;->isFroyoOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->hasExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    .line 125
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/art/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/videolan/vlc/gui/audio/AudioUtil;->ART_DIR:Ljava/lang/String;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/covers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/videolan/vlc/gui/audio/AudioUtil;->COVER_DIR:Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/videolan/vlc/gui/audio/AudioUtil;->PLAYLIST_DIR:Ljava/lang/String;

    .line 129
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lorg/videolan/vlc/gui/audio/AudioUtil;->ART_DIR:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/videolan/vlc/gui/audio/AudioUtil;->COVER_DIR:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    return-void

    .line 124
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/videolan/vlc/gui/audio/AudioUtil;->CACHE_DIR:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1
.end method

.method private static readCoverBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dipWidth"    # I

    .prologue
    const/4 v8, 0x0

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "cover":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 304
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p2}, Lorg/videolan/vlc/util/Util;->convertDpToPx(I)I

    move-result v3

    .line 307
    .local v3, "width":I
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 310
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v4, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_0

    .line 311
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 312
    const/4 v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 315
    :goto_0
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    if-gt v4, v3, :cond_1

    .line 317
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 320
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v4, v3, :cond_0

    .line 323
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v4, v3

    int-to-double v4, v4

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v1, v4

    .line 324
    .local v1, "height":I
    invoke-static {v0, v3, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .end local v1    # "height":I
    :cond_0
    return-object v0

    .line 316
    :cond_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static setRingtone(Lorg/videolan/libvlc/Media;Landroid/content/Context;)V
    .locals 11
    .param p0, "song"    # Lorg/videolan/libvlc/Media;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f0c0021

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 78
    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/videolan/libvlc/LibVlcUtil;->URItoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 79
    .local v2, "newringtone":Ljava/io/File;
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "_data"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v5, "title"

    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v5, "mime_type"

    const-string v6, "audio/*"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v5, "artist"

    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "is_ringtone"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v5, "is_notification"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    const-string v5, "is_alarm"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    const-string v5, "is_music"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 97
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_data=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, "newUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 101
    const/4 v6, 0x1

    .line 99
    invoke-static {v5, v6, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 113
    const v6, 0x7f0c0020

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 104
    .end local v1    # "newUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 106
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private static writeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 286
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 295
    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 299
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    if-eqz p0, :cond_2

    .line 291
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    :cond_2
    if-eqz v3, :cond_3

    .line 296
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_3
    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 292
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "VLC/AudioUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writeBitmap failed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 295
    :goto_2
    if-eqz v2, :cond_4

    .line 296
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 298
    :cond_4
    throw v4

    .line 294
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 292
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method
