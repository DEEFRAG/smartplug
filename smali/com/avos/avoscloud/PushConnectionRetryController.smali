.class public Lcom/avos/avoscloud/PushConnectionRetryController;
.super Ljava/lang/Object;
.source "PushConnectionRetryController.java"


# static fields
.field static final MAX_RETRY_TIMES:I = 0xa

.field static final RETRY_INTERVAL:I = 0xea60


# instance fields
.field retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    invoke-direct {v0, p1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryConnect()Z
    .locals 10

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    .local v0, "currentTS":J
    const-wide/32 v8, 0xea60

    sub-long v3, v0, v8

    .line 22
    .local v3, "lastTS":J
    iget-object v8, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/avos/avospush/session/MessageQueue;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 24
    .local v5, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v8}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 25
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 27
    .local v6, "ts":J
    cmp-long v8, v6, v3

    if-gez v8, :cond_0

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    .end local v0    # "currentTS":J
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v3    # "lastTS":J
    .end local v5    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "ts":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 31
    .restart local v0    # "currentTS":J
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v3    # "lastTS":J
    .restart local v5    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v8, v5}, Lcom/avos/avospush/session/MessageQueue;->removeAll(Ljava/util/Collection;)Z

    .line 32
    iget-object v8, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v8}, Lcom/avos/avospush/session/MessageQueue;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    const/16 v9, 0xa

    if-gt v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_1
    monitor-exit p0

    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method
