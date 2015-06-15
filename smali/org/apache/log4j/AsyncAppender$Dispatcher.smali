.class Lorg/apache/log4j/AsyncAppender$Dispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dispatcher"
.end annotation


# instance fields
.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final buffer:Ljava/util/List;

.field private final discardMap:Ljava/util/Map;

.field private final parent:Lorg/apache/log4j/AsyncAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iput-object p2, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object p3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v6, v1

    :cond_0
    if-eqz v6, :cond_6

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v0, v0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v6, v0

    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    if-eqz v6, :cond_3

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v0, v0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    move v6, v0

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    if-lez v0, :cond_5

    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v3, v0

    new-array v3, v3, [Lorg/apache/log4j/spi/LoggingEvent;

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    invoke-virtual {v0}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->createEvent()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v0

    aput-object v0, v3, v4

    move v4, v5

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    move v0, v2

    :goto_4
    :try_start_2
    array-length v4, v3

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
.end method
