.class Lcom/tencent/qc/stat/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/qc/stat/r;

.field final synthetic b:Lcom/tencent/qc/stat/StatStore;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/StatStore;Lcom/tencent/qc/stat/r;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/tencent/qc/stat/c;->b:Lcom/tencent/qc/stat/StatStore;

    iput-object p2, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 453
    iget-object v0, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    invoke-virtual {v0}, Lcom/tencent/qc/stat/r;->a()Ljava/lang/String;

    move-result-object v11

    .line 454
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 455
    invoke-static {v11}, Lcom/tencent/qc/stat/common/StatCommonHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iget-object v1, v1, Lcom/tencent/qc/stat/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 458
    const-string v1, "content"

    iget-object v2, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iget-object v2, v2, Lcom/tencent/qc/stat/r;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "md5sum"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iput-object v0, v1, Lcom/tencent/qc/stat/r;->c:Ljava/lang/String;

    .line 461
    const-string v0, "version"

    iget-object v1, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iget v1, v1, Lcom/tencent/qc/stat/r;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qc/stat/c;->b:Lcom/tencent/qc/stat/StatStore;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 469
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 470
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iget v2, v2, Lcom/tencent/qc/stat/r;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v2, :cond_0

    move v0, v10

    .line 478
    :goto_0
    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_1
    :goto_1
    if-ne v10, v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/tencent/qc/stat/c;->b:Lcom/tencent/qc/stat/StatStore;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/StatStore;)Lcom/tencent/qc/stat/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "type=?"

    new-array v3, v10, [Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iget v4, v4, Lcom/tencent/qc/stat/r;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 497
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 498
    invoke-static {}, Lcom/tencent/qc/stat/StatStore;->c()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to store cfg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    .line 505
    :cond_2
    :goto_3
    return-void

    .line 475
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 476
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/tencent/qc/stat/StatStore;->c()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 478
    if-eqz v1, :cond_6

    .line 479
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_1

    .line 478
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_3

    .line 479
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 492
    :cond_4
    const-string v0, "type"

    iget-object v1, p0, Lcom/tencent/qc/stat/c;->a:Lcom/tencent/qc/stat/r;

    iget v1, v1, Lcom/tencent/qc/stat/r;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 493
    iget-object v0, p0, Lcom/tencent/qc/stat/c;->b:Lcom/tencent/qc/stat/StatStore;

    invoke-static {v0}, Lcom/tencent/qc/stat/StatStore;->b(Lcom/tencent/qc/stat/StatStore;)Lcom/tencent/qc/stat/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qc/stat/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_2

    .line 500
    :cond_5
    invoke-static {}, Lcom/tencent/qc/stat/StatStore;->c()Lcom/tencent/qc/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sucessed to store cfg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qc/stat/common/StatLogger;->b(Ljava/lang/Object;)V

    goto :goto_3

    .line 478
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 475
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move v0, v9

    goto/16 :goto_1

    :cond_7
    move v0, v9

    goto/16 :goto_0
.end method
