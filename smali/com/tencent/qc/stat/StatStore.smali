.class public Lcom/tencent/qc/stat/StatStore;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static e:Lcom/tencent/qc/stat/common/StatLogger;

.field private static f:Lcom/tencent/qc/stat/StatStore;


# instance fields
.field a:Landroid/os/Handler;

.field volatile b:I

.field c:Lcom/tencent/qc/stat/common/User;

.field private d:Lcom/tencent/qc/stat/i;

.field private g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qc/stat/StatStore;->f:Lcom/tencent/qc/stat/StatStore;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    .line 63
    iput-object v1, p0, Lcom/tencent/qc/stat/StatStore;->c:Lcom/tencent/qc/stat/common/User;

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qc/stat/StatStore;->g:Ljava/util/HashMap;

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatStore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    sget-object v1, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch store thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qc/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    .line 105
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/tencent/qc/stat/i;

    invoke-direct {v1, v0}, Lcom/tencent/qc/stat/i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    .line 108
    iget-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    iget-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    invoke-virtual {p0, v0}, Lcom/tencent/qc/stat/StatStore;->b(Landroid/content/Context;)Lcom/tencent/qc/stat/common/User;

    .line 111
    invoke-direct {p0}, Lcom/tencent/qc/stat/StatStore;->e()V

    .line 112
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/g;

    invoke-direct {v1, p0}, Lcom/tencent/qc/stat/g;-><init>(Lcom/tencent/qc/stat/StatStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/qc/stat/StatStore;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->f:Lcom/tencent/qc/stat/StatStore;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/tencent/qc/stat/StatStore;

    invoke-direct {v0, p0}, Lcom/tencent/qc/stat/StatStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qc/stat/StatStore;->f:Lcom/tencent/qc/stat/StatStore;

    .line 140
    :cond_0
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->f:Lcom/tencent/qc/stat/StatStore;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/qc/stat/StatStore;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/qc/stat/StatStore;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/qc/stat/StatStore;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tencent/qc/stat/StatStore;->b(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/qc/stat/StatStore;)Lcom/tencent/qc/stat/i;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/tencent/qc/stat/StatStore;->c(Ljava/util/List;I)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 10

    .prologue
    .line 271
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sent events in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qc/stat/s;

    .line 276
    iget v2, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    iget-object v3, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v3}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const-string v5, "event_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/tencent/qc/stat/s;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    :try_start_1
    sget-object v1, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    :goto_1
    return-void

    .line 280
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 282
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private b(Ljava/util/List;I)V
    .locals 11

    .prologue
    .line 300
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending events to status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 303
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 304
    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qc/stat/s;

    .line 307
    iget v3, v0, Lcom/tencent/qc/stat/s;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->f()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 308
    iget v3, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    iget-object v4, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v4}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-wide v9, v0, Lcom/tencent/qc/stat/s;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    :try_start_1
    sget-object v1, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 331
    :goto_1
    return-void

    .line 312
    :cond_1
    :try_start_2
    const-string v3, "send_count"

    iget v4, v0, Lcom/tencent/qc/stat/s;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    sget-object v3, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/tencent/qc/stat/s;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 314
    iget-object v3, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v3}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "events"

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v0, Lcom/tencent/qc/stat/s;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 317
    if-gtz v0, :cond_0

    .line 318
    sget-object v3, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update db, error code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qc/stat/common/StatLogger;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 329
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 323
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 324
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1
.end method

.method static synthetic c()Lcom/tencent/qc/stat/common/StatLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    return-object v0
.end method

.method private c(Ljava/util/List;I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 369
    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "event_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 374
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 376
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 378
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 379
    new-instance v0, Lcom/tencent/qc/stat/s;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qc/stat/s;-><init>(JLjava/lang/String;II)V

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 387
    :goto_1
    :try_start_2
    sget-object v2, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 389
    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_0
    :goto_2
    return-void

    .line 389
    :cond_1
    if-eqz v6, :cond_0

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 389
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_2

    .line 390
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 389
    :catchall_1
    move-exception v0

    move-object v9, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_3

    .line 386
    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    const-string v1, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    iget-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const-string v3, "status=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    .line 131
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 608
    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "keyvalues"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 612
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->g:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    :goto_1
    :try_start_2
    sget-object v2, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 618
    if-eqz v1, :cond_0

    .line 619
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_0
    :goto_2
    return-void

    .line 618
    :cond_1
    if-eqz v1, :cond_0

    .line 619
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 618
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    .line 619
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 618
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 615
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    return v0
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/b;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qc/stat/b;-><init>(Lcom/tencent/qc/stat/StatStore;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method a(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 402
    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->h()I

    move-result v0

    if-gtz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    invoke-static {}, Lcom/tencent/qc/stat/StatConfig;->h()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 406
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    const-string v1, "Too many events stored in db."

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->c(Ljava/lang/Object;)V

    .line 407
    iget v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    iget-object v1, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v1}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const-string v3, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    .line 413
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    invoke-virtual {p1}, Lcom/tencent/qc/stat/event/Event;->d()Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v2, "send_count"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/qc/stat/event/Event;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    iget-object v2, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v2}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 420
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 421
    sget-object v0, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    :cond_3
    iget v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qc/stat/StatStore;->b:I

    .line 424
    if-eqz p2, :cond_0

    .line 425
    invoke-interface {p2}, Lcom/tencent/qc/stat/q;->a()V

    goto/16 :goto_0
.end method

.method a(Lcom/tencent/qc/stat/r;)V
    .locals 2

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/c;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qc/stat/c;-><init>(Lcom/tencent/qc/stat/StatStore;Lcom/tencent/qc/stat/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 349
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lcom/tencent/qc/stat/StatStore;->b(Ljava/util/List;)V

    .line 360
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/e;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qc/stat/e;-><init>(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Ljava/util/List;I)V
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/tencent/qc/stat/StatStore;->b(Ljava/util/List;I)V

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qc/stat/h;-><init>(Lcom/tencent/qc/stat/StatStore;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Lcom/tencent/qc/stat/common/User;
    .locals 12

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->c:Lcom/tencent/qc/stat/common/User;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->c:Lcom/tencent/qc/stat/common/User;

    .line 261
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const/4 v9, 0x0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 171
    const/4 v0, 0x0

    .line 172
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 175
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 177
    const/4 v0, 0x1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 183
    const/4 v2, 0x1

    if-eq v7, v2, :cond_b

    .line 184
    const-wide/16 v10, 0x3e8

    mul-long/2addr v5, v10

    invoke-static {v5, v6}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 186
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v8

    invoke-static {v5, v6}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 189
    const/4 v2, 0x1

    .line 194
    :goto_1
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 195
    or-int/lit8 v2, v2, 0x2

    move v6, v2

    .line 198
    :goto_2
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 200
    const/4 v3, 0x0

    .line 203
    if-eqz v10, :cond_6

    array-length v2, v10

    if-lez v2, :cond_6

    .line 204
    const/4 v2, 0x0

    aget-object v2, v10, v2

    move-object v5, v2

    .line 209
    :goto_3
    if-eqz v10, :cond_7

    array-length v2, v10

    const/4 v11, 0x2

    if-lt v2, v11, :cond_7

    .line 210
    const/4 v2, 0x1

    aget-object v2, v10, v2

    .line 218
    :cond_1
    :goto_4
    new-instance v10, Lcom/tencent/qc/stat/common/User;

    invoke-direct {v10, v5, v2, v6}, Lcom/tencent/qc/stat/common/User;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v10, p0, Lcom/tencent/qc/stat/StatStore;->c:Lcom/tencent/qc/stat/common/User;

    .line 219
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 220
    const-string v10, "uid"

    invoke-virtual {v2, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v4, "user_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v4, "app_ver"

    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "ts"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    if-eqz v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v3}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user"

    const-string v8, "uid=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v3, v4, v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    :cond_2
    if-eq v6, v7, :cond_3

    .line 229
    iget-object v3, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v3}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 234
    :cond_3
    if-nez v0, :cond_4

    .line 235
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_5
    const/4 v4, 0x0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 245
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 246
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 247
    const-string v9, "uid"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "user_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v0, "app_ver"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "ts"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->d:Lcom/tencent/qc/stat/i;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "user"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 252
    new-instance v0, Lcom/tencent/qc/stat/common/User;

    invoke-direct {v0, v2, v3, v4}, Lcom/tencent/qc/stat/common/User;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/qc/stat/StatStore;->c:Lcom/tencent/qc/stat/common/User;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :cond_4
    if-eqz v1, :cond_5

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->c:Lcom/tencent/qc/stat/common/User;

    goto/16 :goto_0

    .line 206
    :cond_6
    :try_start_2
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v4, v2

    .line 207
    goto/16 :goto_3

    .line 212
    :cond_7
    invoke-static {p1}, Lcom/tencent/qc/stat/common/StatCommonHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 215
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 254
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 255
    :goto_7
    :try_start_3
    sget-object v2, Lcom/tencent/qc/stat/StatStore;->e:Lcom/tencent/qc/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    if-eqz v1, :cond_5

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 257
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_8
    if-eqz v1, :cond_8

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 257
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 254
    :catch_1
    move-exception v0

    goto :goto_7

    :cond_9
    move-object v0, v2

    goto/16 :goto_5

    :cond_a
    move v6, v2

    goto/16 :goto_2

    :cond_b
    move v2, v7

    goto/16 :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/d;

    invoke-direct {v1, p0}, Lcom/tencent/qc/stat/d;-><init>(Lcom/tencent/qc/stat/StatStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method b(Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/qc/stat/StatStore;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qc/stat/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qc/stat/f;-><init>(Lcom/tencent/qc/stat/StatStore;Lcom/tencent/qc/stat/event/Event;Lcom/tencent/qc/stat/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method
