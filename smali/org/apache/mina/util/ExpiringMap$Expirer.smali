.class public Lorg/apache/mina/util/ExpiringMap$Expirer;
.super Ljava/lang/Object;
.source "ExpiringMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/ExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Expirer"
.end annotation


# instance fields
.field private expirationIntervalMillis:J

.field private final expirerThread:Ljava/lang/Thread;

.field private running:Z

.field private final stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field final synthetic this$0:Lorg/apache/mina/util/ExpiringMap;

.field private timeToLiveMillis:J


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/ExpiringMap;)V
    .locals 3

    .prologue
    .line 290
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iput-object p1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 291
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpiringMapExpirer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # operator++ for: Lorg/apache/mina/util/ExpiringMap;->expirerCount:I
    invoke-static {}, Lorg/apache/mina/util/ExpiringMap;->access$008()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    .line 293
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 294
    return-void
.end method

.method private processExpires()V
    .locals 12

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 311
    .local v6, "timeNow":J
    iget-object v8, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    # getter for: Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lorg/apache/mina/util/ExpiringMap;->access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;

    .line 313
    .local v3, "o":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    iget-wide v8, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 317
    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getLastAccessTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 319
    .local v4, "timeIdle":J
    iget-wide v8, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    .line 320
    iget-object v8, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    # getter for: Lorg/apache/mina/util/ExpiringMap;->delegate:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lorg/apache/mina/util/ExpiringMap;->access$100(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v8, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->this$0:Lorg/apache/mina/util/ExpiringMap;

    # getter for: Lorg/apache/mina/util/ExpiringMap;->expirationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v8}, Lorg/apache/mina/util/ExpiringMap;->access$200(Lorg/apache/mina/util/ExpiringMap;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/util/ExpirationListener;

    .line 323
    .local v2, "listener":Lorg/apache/mina/util/ExpirationListener;, "Lorg/apache/mina/util/ExpirationListener<TV;>;"
    invoke-virtual {v3}, Lorg/apache/mina/util/ExpiringMap$ExpiringObject;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/apache/mina/util/ExpirationListener;->expired(Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lorg/apache/mina/util/ExpirationListener;, "Lorg/apache/mina/util/ExpirationListener<TV;>;"
    .end local v3    # "o":Lorg/apache/mina/util/ExpiringMap$ExpiringObject;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.ExpiringObject;"
    .end local v4    # "timeIdle":J
    :cond_1
    return-void
.end method


# virtual methods
.method public getExpirationInterval()I
    .locals 2

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 446
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getTimeToLive()I
    .locals 2

    .prologue
    .line 410
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 413
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 394
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 297
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    :goto_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lorg/apache/mina/util/ExpiringMap$Expirer;->processExpires()V

    .line 301
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0

    .line 306
    :cond_0
    return-void
.end method

.method public setExpirationInterval(J)V
    .locals 2
    .param p1, "expirationInterval"    # J

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 463
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirationIntervalMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 467
    return-void

    .line 465
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setTimeToLive(J)V
    .locals 2
    .param p1, "timeToLive"    # J

    .prologue
    .line 426
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 429
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    :try_start_0
    iput-wide v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->timeToLiveMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    return-void

    .line 431
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startExpiring()V
    .locals 2

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 339
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startExpiringIfNotStarted()V
    .locals 2

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 353
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 369
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 360
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-nez v0, :cond_1

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 364
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 367
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stopExpiring()V
    .locals 2

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/mina/util/ExpiringMap$Expirer;, "Lorg/apache/mina/util/ExpiringMap<TK;TV;>.Expirer;"
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 378
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->running:Z

    .line 380
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->expirerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/util/ExpiringMap$Expirer;->stateLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
