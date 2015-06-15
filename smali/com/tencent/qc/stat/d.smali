.class Lcom/tencent/qc/stat/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/qc/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/StatStore;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tencent/qc/stat/d;->a:Lcom/tencent/qc/stat/StatStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 516
    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qc/stat/d;->a:Lcom/tencent/qc/stat/StatStore;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/StatStore;)Lcom/tencent/qc/stat/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 520
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 522
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 524
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 525
    new-instance v5, Lcom/tencent/qc/stat/r;

    invoke-direct {v5, v0}, Lcom/tencent/qc/stat/r;-><init>(I)V

    .line 526
    iput v0, v5, Lcom/tencent/qc/stat/r;->a:I

    .line 527
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/tencent/qc/stat/r;->b:Lorg/json/JSONObject;

    .line 528
    iput-object v3, v5, Lcom/tencent/qc/stat/r;->c:Ljava/lang/String;

    .line 529
    iput v4, v5, Lcom/tencent/qc/stat/r;->d:I

    .line 530
    invoke-static {v5}, Lcom/tencent/qc/stat/StatConfig;->a(Lcom/tencent/qc/stat/r;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/tencent/qc/stat/StatStore;->c()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 539
    if-eqz v1, :cond_0

    .line 540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_0
    :goto_2
    return-void

    .line 539
    :cond_1
    if-eqz v1, :cond_0

    .line 540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 539
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    .line 540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 539
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 536
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method
