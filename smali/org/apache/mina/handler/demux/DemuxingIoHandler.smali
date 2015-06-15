.class public Lorg/apache/mina/handler/demux/DemuxingIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "DemuxingIoHandler.java"


# instance fields
.field private final exceptionHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final exceptionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final receivedMessageHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final receivedMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final sentMessageHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final sentMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    .line 104
    return-void
.end method

.method private findExceptionHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object v0
.end method

.method private findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 9
    .param p1, "handlers"    # Ljava/util/Map;
    .param p2, "handlerCache"    # Ljava/util/Map;
    .param p3, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p4, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    const/4 v7, 0x0

    .line 321
    const/4 v2, 0x0

    .line 323
    .local v2, "handler":Ljava/lang/Object;
    if-eqz p4, :cond_1

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v7

    .line 379
    .end local v2    # "handler":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 330
    .restart local v2    # "handler":Ljava/lang/Object;
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 331
    if-nez v2, :cond_0

    .line 338
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    if-nez v2, :cond_3

    .line 345
    if-nez p4, :cond_2

    .line 346
    new-instance p4, Lorg/apache/mina/util/IdentityHashSet;

    .end local p4    # "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    invoke-direct {p4}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 348
    .restart local p4    # "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    :cond_2
    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 351
    .local v4, "interfaces":[Ljava/lang/Class;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 352
    .local v1, "element":Ljava/lang/Class;
    invoke-direct {p0, p1, p2, v1, p4}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_5

    .line 359
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "element":Ljava/lang/Class;
    .end local v3    # "i$":I
    .end local v4    # "interfaces":[Ljava/lang/Class;
    .end local v5    # "len$":I
    :cond_3
    if-nez v2, :cond_4

    .line 364
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 365
    .local v6, "superclass":Ljava/lang/Class;
    if-eqz v6, :cond_4

    .line 366
    invoke-direct {p0, p1, p2, v6, v7}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v2

    .line 375
    .end local v6    # "superclass":Ljava/lang/Class;
    :cond_4
    if-eqz v2, :cond_0

    .line 376
    invoke-interface {p2, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 351
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v1    # "element":Ljava/lang/Class;
    .restart local v3    # "i$":I
    .restart local v4    # "interfaces":[Ljava/lang/Class;
    .restart local v5    # "len$":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private findReceivedMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method private findSentMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method


# virtual methods
.method public addExceptionHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/ExceptionHandler;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<-TE;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "handler":Lorg/apache/mina/handler/demux/ExceptionHandler;, "Lorg/apache/mina/handler/demux/ExceptionHandler<-TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object v0
.end method

.method public addReceivedMessageHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/MessageHandler;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<-TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public addSentMessageHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/MessageHandler;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<-TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;

    move-result-object v0

    .line 271
    .local v0, "handler":Lorg/apache/mina/handler/demux/ExceptionHandler;, "Lorg/apache/mina/handler/demux/ExceptionHandler<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/ExceptionHandler;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 278
    return-void

    .line 274
    :cond_0
    new-instance v1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No handler found for exception type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected findExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findExceptionHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/ExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method protected findReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findReceivedMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    return-object v0
.end method

.method protected findSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findSentMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public getReceivedMessageHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSentMessageHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    .line 231
    .local v0, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/MessageHandler;->handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 238
    return-void

    .line 234
    :cond_0
    new-instance v1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No message handler found for message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    .line 250
    .local v0, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/MessageHandler;->handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 257
    return-void

    .line 253
    :cond_0
    new-instance v1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No handler found for message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object v0
.end method

.method public removeReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public removeSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method
