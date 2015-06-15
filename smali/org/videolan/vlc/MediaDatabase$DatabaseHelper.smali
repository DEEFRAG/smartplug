.class Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/MediaDatabase;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/MediaDatabase;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->this$0:Lorg/videolan/vlc/MediaDatabase;

    .line 115
    const-string v0, "vlc_database"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 116
    return-void
.end method


# virtual methods
.method public createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 155
    const-string v0, "CREATE TABLE IF NOT EXISTS media_table (location TEXT PRIMARY KEY NOT NULL, time INTEGER, length INTEGER, type INTEGER, picture BLOB, title VARCHAR(200), artist VARCHAR(200), genre VARCHAR(200), album VARCHAR(200), width INTEGER, height INTEGER, artwork_url VARCHAR(256), audio_track INTEGER, spu_track INTEGER);"

    .line 172
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public dropMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 150
    const-string v0, "DROP TABLE media_table;"

    .line 151
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 122
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "vlc_database"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 131
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 132
    .local v3, "version":I
    if-eq v3, v6, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 135
    if-nez v3, :cond_1

    .line 136
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    :goto_2
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 126
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "version":I
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e2":Landroid/database/sqlite/SQLiteException;
    const-string v4, "VLC/MediaDatabase"

    const-string v5, "SQLite database could not be created! Media library cannot be saved."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v7}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .line 138
    .end local v2    # "e2":Landroid/database/sqlite/SQLiteException;
    .restart local v3    # "version":I
    :cond_1
    const/16 v4, 0x8

    :try_start_3
    invoke-virtual {p0, v0, v3, v4}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 142
    :catchall_0
    move-exception v4

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 178
    const-string v0, "CREATE TABLE IF NOT EXISTS directories_table (path TEXT PRIMARY KEY NOT NULL);"

    .line 184
    .local v0, "createDirTabelQuery":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    const-string v2, "CREATE TABLE IF NOT EXISTS playlist_table (name VARCHAR(200) PRIMARY KEY NOT NULL);"

    .line 193
    .local v2, "createPlaylistTableQuery":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v1, "CREATE TABLE IF NOT EXISTS playlist_media_table (id INTEGER PRIMARY KEY AUTOINCREMENT, playlist_name VARCHAR(200) NOT NULL,media_path TEXT NOT NULL);"

    .line 201
    .local v1, "createPlaylistMediaTableQuery":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    const-string v3, "CREATE TABLE IF NOT EXISTS searchhistory_table (key VARCHAR(200) PRIMARY KEY NOT NULL, date DATETIME NOT NULL);"

    .line 210
    .local v3, "createSearchhistoryTabelQuery":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v0, 0x8

    .line 215
    if-ge p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->dropMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/MediaDatabase$DatabaseHelper;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 219
    :cond_0
    return-void
.end method
