.class public Lnet/tsz/afinal/FinalDb;
.super Ljava/lang/Object;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/FinalDb$DaoConfig;,
        Lnet/tsz/afinal/FinalDb$DbUpdateListener;,
        Lnet/tsz/afinal/FinalDb$SqliteDbHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IKonKeDb"

.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/FinalDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lnet/tsz/afinal/FinalDb$DaoConfig;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/tsz/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lnet/tsz/afinal/FinalDb$DaoConfig;)V
    .locals 6
    .param p1, "config"    # Lnet/tsz/afinal/FinalDb$DaoConfig;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Lnet/tsz/afinal/exception/DbException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lnet/tsz/afinal/exception/DbException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 46
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {p0, v0, v1}, Lnet/tsz/afinal/FinalDb;->createDbFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    :goto_0
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb;->config:Lnet/tsz/afinal/FinalDb$DaoConfig;

    .line 55
    return-void

    .line 49
    :cond_2
    new-instance v0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;

    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbVersion()I

    move-result v4

    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbUpdateListener()Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;-><init>(Lnet/tsz/afinal/FinalDb;Landroid/content/Context;Ljava/lang/String;ILnet/tsz/afinal/FinalDb$DbUpdateListener;)V

    .line 52
    invoke-virtual {v0}, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 73
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 74
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 101
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetDirectory"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 133
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 136
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetDirectory"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z

    .prologue
    .line 150
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 151
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 155
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILnet/tsz/afinal/FinalDb$DbUpdateListener;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetDirectory"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "isDebug"    # Z
    .param p4, "dbVersion"    # I
    .param p5, "dbUpdateListener"    # Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .prologue
    .line 203
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 204
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 208
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 209
    invoke-virtual {v0, p5}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbUpdateListener(Lnet/tsz/afinal/FinalDb$DbUpdateListener;)V

    .line 210
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Z)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 116
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 117
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 120
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZILnet/tsz/afinal/FinalDb$DbUpdateListener;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "dbVersion"    # I
    .param p4, "dbUpdateListener"    # Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .prologue
    .line 175
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 176
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 179
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 180
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbUpdateListener(Lnet/tsz/afinal/FinalDb$DbUpdateListener;)V

    .line 181
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 85
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 86
    .local v0, "config":Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 88
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;
    .locals 1
    .param p0, "daoConfig"    # Lnet/tsz/afinal/FinalDb$DaoConfig;

    .prologue
    .line 220
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->getInstance(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method private createDbFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .param p1, "sdcardPath"    # Ljava/lang/String;
    .param p2, "dbfilename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 879
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .local v0, "dbf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 882
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 892
    :cond_0
    :goto_0
    return-object v2

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "ioex":Ljava/io/IOException;
    new-instance v2, Lnet/tsz/afinal/exception/DbException;

    const-string v3, "\u6570\u636e\u5e93\u6587\u4ef6\u521b\u5efa\u5931\u8d25"

    invoke-direct {v2, v3, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 889
    .end local v1    # "ioex":Ljava/io/IOException;
    :cond_1
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_0
.end method

.method private debugSql(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 798
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->config:Lnet/tsz/afinal/FinalDb$DaoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->config:Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-virtual {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->isDebug()Z

    .line 802
    :cond_0
    return-void
.end method

.method private exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V
    .locals 3
    .param p1, "sqlInfo"    # Lnet/tsz/afinal/db/sqlite/SqlInfo;

    .prologue
    .line 390
    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v0, "IKonKeDb"

    const-string v1, "sava error:sqlInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p2, "strSQL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 681
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 682
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 683
    iget-object v5, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 685
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 694
    if-eqz v0, :cond_0

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_0
    const/4 v0, 0x0

    .line 698
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    return-object v2

    .line 687
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    :try_start_1
    invoke-static {v0, p1, p0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lnet/tsz/afinal/FinalDb;)Ljava/lang/Object;

    move-result-object v3

    .line 688
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 691
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 692
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    if-eqz v0, :cond_2

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_2
    const/4 v0, 0x0

    move-object v2, v4

    .line 698
    goto :goto_1

    .line 693
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 694
    if-eqz v0, :cond_3

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_3
    const/4 v0, 0x0

    .line 697
    throw v4
.end method

.method private static declared-synchronized getInstance(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;
    .locals 4
    .param p0, "daoConfig"    # Lnet/tsz/afinal/FinalDb$DaoConfig;

    .prologue
    .line 58
    const-class v2, Lnet/tsz/afinal/FinalDb;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lnet/tsz/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/FinalDb;

    .line 59
    .local v0, "dao":Lnet/tsz/afinal/FinalDb;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lnet/tsz/afinal/FinalDb;

    .end local v0    # "dao":Lnet/tsz/afinal/FinalDb;
    invoke-direct {v0, p0}, Lnet/tsz/afinal/FinalDb;-><init>(Lnet/tsz/afinal/FinalDb$DaoConfig;)V

    .line 61
    .restart local v0    # "dao":Lnet/tsz/afinal/FinalDb;
    sget-object v1, Lnet/tsz/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v2

    return-object v0

    .line 58
    .end local v0    # "dao":Lnet/tsz/afinal/FinalDb;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 4
    .param p2, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/table/KeyValue;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    :goto_1
    return-void

    .line 277
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/db/table/KeyValue;

    .line 278
    .local v0, "kv":Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0    # "kv":Lnet/tsz/afinal/db/table/KeyValue;
    :cond_1
    const-string v1, "IKonKeDb"

    .line 282
    const-string v2, "insertContentValues: List<KeyValue> is empty or ContentValues is empty!"

    .line 281
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private tableIsExist(Lnet/tsz/afinal/db/table/TableInfo;)Z
    .locals 8
    .param p1, "table"    # Lnet/tsz/afinal/db/table/TableInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 769
    invoke-virtual {p1}, Lnet/tsz/afinal/db/table/TableInfo;->isCheckDatabese()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 794
    :goto_0
    return v4

    .line 772
    :cond_0
    const/4 v1, 0x0

    .line 774
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 774
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, "sql":Ljava/lang/String;
    invoke-direct {p0, v3}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 777
    iget-object v6, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 779
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 780
    .local v0, "count":I
    if-lez v0, :cond_4

    .line 781
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lnet/tsz/afinal/db/table/TableInfo;->setCheckDatabese(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    if-eqz v1, :cond_1

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_1
    const/4 v1, 0x0

    .line 782
    goto :goto_0

    .line 786
    .end local v0    # "count":I
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 787
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    if-eqz v1, :cond_2

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_2
    const/4 v1, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    move v4, v5

    .line 794
    goto :goto_0

    .line 788
    :catchall_0
    move-exception v4

    .line 789
    if-eqz v1, :cond_3

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_3
    const/4 v1, 0x0

    .line 792
    throw v4

    .line 789
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 791
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkColumnExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 750
    const/4 v2, 0x0

    .line 751
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 754
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT * FROM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 755
    const/4 v5, 0x0

    .line 754
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    .line 760
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 761
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_0
    :goto_1
    return v2

    .line 756
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "IKonKeDb"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkColumnExists1..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 761
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 759
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 760
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 761
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_2
    throw v3
.end method

.method public checkTableExist(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/tsz/afinal/FinalDb;->tableIsExist(Lnet/tsz/afinal/db/table/TableInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 317
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 318
    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 354
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 330
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 331
    return-void
.end method

.method public deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 342
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public dropDb()V
    .locals 4

    .prologue
    .line 376
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 377
    const-string v2, "SELECT name FROM sqlite_master WHERE type =\'table\' AND name != \'sqlite_sequence\'"

    const/4 v3, 0x0

    .line 376
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 378
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 379
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 383
    :cond_0
    if-eqz v0, :cond_1

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 385
    const/4 v0, 0x0

    .line 387
    :cond_1
    return-void

    .line 380
    :cond_2
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dropTable(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 366
    invoke-static {p1}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 367
    .local v1, "table":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "sql":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public exeSql(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 628
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "strWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 654
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p2, "strWhere"    # Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 406
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v2

    .line 407
    .local v2, "sqlInfo":Lnet/tsz/afinal/db/sqlite/SqlInfo;
    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getBindArgsAsStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 412
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    invoke-static {v0, p2, p0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lnet/tsz/afinal/FinalDb;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 421
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v3

    .line 415
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 421
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 417
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    throw v3

    .line 418
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;
    .locals 4
    .param p1, "strSQL"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 708
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 710
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    invoke-static {v0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lnet/tsz/afinal/db/sqlite/DbModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 716
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 718
    :goto_0
    return-object v2

    .line 713
    :catch_0
    move-exception v1

    .line 714
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 715
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 716
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 717
    throw v2

    .line 716
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public findDbModelListBySQL(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "strSQL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/sqlite/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 724
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v1, "dbModelList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/sqlite/DbModel;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 732
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 734
    :goto_1
    return-object v1

    .line 727
    :cond_0
    :try_start_1
    invoke-static {v0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v2

    .line 730
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 732
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 731
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 732
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 733
    throw v3
.end method

.method public findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 432
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 435
    .local v0, "dbModel":Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 436
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 437
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, p2, v3}, Lnet/tsz/afinal/FinalDb;->loadManyToOne(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 440
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public varargs findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "findClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 454
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 457
    .local v0, "dbModel":Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 458
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 459
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0, v1, p2, p3}, Lnet/tsz/afinal/FinalDb;->loadManyToOne(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 461
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 541
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 544
    .local v0, "dbModel":Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 545
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 546
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1, p2, v3}, Lnet/tsz/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 549
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public varargs findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/Object;
    .param p3, "findClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 562
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "sql":Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 565
    .local v0, "dbModel":Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 566
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 567
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, p2, p3}, Lnet/tsz/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 570
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public varargs loadManyToOne(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .param p1, "dbModel"    # Lnet/tsz/afinal/db/sqlite/DbModel;
    .param p4, "findClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/tsz/afinal/db/sqlite/DbModel;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_1

    .line 476
    :try_start_0
    invoke-static {p3}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v7

    iget-object v7, v7, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 477
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 478
    .local v6, "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 530
    .end local v6    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_1
    :goto_1
    return-object p2

    .line 478
    .restart local v6    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 480
    .local v4, "many":Lnet/tsz/afinal/db/table/ManyToOne;
    const/4 v1, 0x0

    .line 481
    .local v1, "id":Ljava/lang/Object;
    if-eqz p1, :cond_7

    .line 482
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lnet/tsz/afinal/db/sqlite/DbModel;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 489
    .end local v1    # "id":Ljava/lang/Object;
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "isFind":Z
    if-eqz p4, :cond_4

    array-length v7, p4

    if-nez v7, :cond_5

    .line 492
    :cond_4
    const/4 v2, 0x1

    .line 494
    :cond_5
    array-length v9, p4

    const/4 v7, 0x0

    :goto_3
    if-lt v7, v9, :cond_8

    .line 500
    :goto_4
    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 505
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v9

    .line 503
    invoke-virtual {p0, v7, v9}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 506
    .local v5, "manyEntity":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_0

    .line 507
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v7, v9, :cond_a

    .line 508
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    .line 511
    new-instance v7, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    .line 513
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v9

    .line 511
    invoke-direct {v7, p2, p3, v9, p0}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lnet/tsz/afinal/FinalDb;)V

    .line 509
    invoke-virtual {v4, p2, v7}, Lnet/tsz/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    :cond_6
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v7, v5}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v2    # "isFind":Z
    .end local v4    # "many":Lnet/tsz/afinal/db/table/ManyToOne;
    .end local v5    # "manyEntity":Ljava/lang/Object;, "TT;"
    .end local v6    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "id":Ljava/lang/Object;
    .restart local v4    # "many":Lnet/tsz/afinal/db/table/ManyToOne;
    .restart local v6    # "manys":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v7, v9, :cond_3

    .line 484
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 485
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    .line 486
    invoke-virtual {v7}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    .line 485
    goto :goto_2

    .line 494
    .end local v1    # "id":Ljava/lang/Object;
    .restart local v2    # "isFind":Z
    :cond_8
    aget-object v3, p4, v7

    .line 495
    .local v3, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v3, :cond_9

    .line 496
    const/4 v2, 0x1

    .line 497
    goto :goto_4

    .line 494
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 519
    .end local v3    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "manyEntity":Ljava/lang/Object;, "TT;"
    :cond_a
    invoke-virtual {v4, p2, v5}, Lnet/tsz/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public varargs loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .param p3, "findClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_1

    .line 584
    :try_start_0
    invoke-static {p2}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    iget-object v8, v8, Lnet/tsz/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 585
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 586
    .local v7, "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    invoke-static {p2}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8, p1}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 587
    .local v1, "id":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 618
    .end local v1    # "id":Ljava/lang/Object;
    .end local v7    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_1
    :goto_1
    return-object p1

    .line 587
    .restart local v1    # "id":Ljava/lang/Object;
    .restart local v7    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/OneToMany;

    .line 588
    .local v5, "one":Lnet/tsz/afinal/db/table/OneToMany;
    const/4 v2, 0x0

    .line 589
    .local v2, "isFind":Z
    if-eqz p3, :cond_3

    array-length v8, p3

    if-nez v8, :cond_4

    .line 590
    :cond_3
    const/4 v2, 0x1

    .line 592
    :cond_4
    array-length v10, p3

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_5

    .line 599
    :goto_3
    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v8

    .line 601
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 600
    invoke-virtual {p0, v8, v10}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 602
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v3, :cond_0

    .line 604
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getDataType()Ljava/lang/Class;

    move-result-object v8

    const-class v10, Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;

    if-ne v8, v10, :cond_7

    .line 606
    invoke-virtual {v5, p1}, Lnet/tsz/afinal/db/table/OneToMany;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;

    .line 607
    .local v6, "oneToManyLazyLoader":Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;
    invoke-virtual {v6, v3}, Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    .end local v1    # "id":Ljava/lang/Object;
    .end local v2    # "isFind":Z
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "one":Lnet/tsz/afinal/db/table/OneToMany;
    .end local v6    # "oneToManyLazyLoader":Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;
    .end local v7    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "id":Ljava/lang/Object;
    .restart local v2    # "isFind":Z
    .restart local v5    # "one":Lnet/tsz/afinal/db/table/OneToMany;
    .restart local v7    # "ones":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_5
    :try_start_1
    aget-object v4, p3, v8

    .line 593
    .local v4, "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v11

    if-ne v11, v4, :cond_6

    .line 594
    const/4 v2, 0x1

    .line 595
    goto :goto_3

    .line 592
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 609
    .end local v4    # "mClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_7
    invoke-virtual {v5, p1, v3}, Lnet/tsz/afinal/db/table/OneToMany;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 230
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildInsertSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 231
    return-void
.end method

.method public saveBindId(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 255
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "entityKvList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v3

    .line 258
    .local v3, "tf":Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v1, v0}, Lnet/tsz/afinal/FinalDb;->insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V

    .line 260
    iget-object v5, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 261
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 266
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "tf":Lnet/tsz/afinal/db/table/TableInfo;
    :cond_0
    :goto_0
    return v4

    .line 263
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "id":Ljava/lang/Long;
    .restart local v3    # "tf":Lnet/tsz/afinal/db/table/TableInfo;
    :cond_1
    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lnet/tsz/afinal/db/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public saveWithId(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 240
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildInsertSqlWithId(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 241
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 294
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 295
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "strWhere"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 306
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 307
    return-void
.end method
