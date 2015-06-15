.class public abstract Lorg/apache/mina/core/session/AbstractIoSession;
.super Ljava/lang/Object;
.source "AbstractIoSession.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;
    }
.end annotation


# static fields
.field private static final CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

.field private static final READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

.field private static final SCHEDULED_COUNTER_RESETTER:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<",
            "Lorg/apache/mina/core/future/CloseFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

.field private final closeFuture:Lorg/apache/mina/core/future/CloseFuture;

.field private volatile closing:Z

.field protected config:Lorg/apache/mina/core/session/IoSessionConfig;

.field private final creationTime:J

.field private currentWriteRequest:Lorg/apache/mina/core/write/WriteRequest;

.field private deferDecreaseReadBuffer:Z

.field private final handler:Lorg/apache/mina/core/service/IoHandler;

.field private idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

.field private idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

.field private idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lastIdleTimeForBoth:J

.field private lastIdleTimeForRead:J

.field private lastIdleTimeForWrite:J

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private final lock:Ljava/lang/Object;

.field private readBytes:J

.field private readBytesThroughput:D

.field private readMessages:J

.field private readMessagesThroughput:D

.field private readSuspended:Z

.field private final scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final service:Lorg/apache/mina/core/service/IoService;

.field private sessionId:J

.field private writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

.field private writeSuspended:Z

.field private writtenBytes:J

.field private writtenBytesThroughput:D

.field private writtenMessages:J

.field private writtenMessagesThroughput:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/core/session/AbstractIoSession;

    const-string v2, "readyReadFutures"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    .line 78
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/core/session/AbstractIoSession;

    const-string v2, "waitingReadFutures"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    .line 81
    new-instance v0, Lorg/apache/mina/core/session/AbstractIoSession$1;

    invoke-direct {v0}, Lorg/apache/mina/core/session/AbstractIoSession$1;-><init>()V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->SCHEDULED_COUNTER_RESETTER:Lorg/apache/mina/core/future/IoFutureListener;

    .line 98
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/service/IoService;)V
    .locals 4
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lock:Ljava/lang/Object;

    .line 120
    new-instance v2, Lorg/apache/mina/core/future/DefaultCloseFuture;

    invoke-direct {v2, p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    .line 125
    iput-boolean v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    .line 127
    iput-boolean v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    .line 130
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 166
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 168
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    .line 184
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->service:Lorg/apache/mina/core/service/IoService;

    .line 185
    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, "currentTime":J
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->creationTime:J

    .line 190
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastThroughputCalculationTime:J

    .line 191
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    .line 192
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    .line 193
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForBoth:J

    .line 194
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForRead:J

    .line 195
    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForWrite:J

    .line 198
    iget-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    sget-object v3, Lorg/apache/mina/core/session/AbstractIoSession;->SCHEDULED_COUNTER_RESETTER:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    .line 201
    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->sessionId:J

    .line 202
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p1, "x1"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D

    return-wide p1
.end method

.method static synthetic access$302(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p1, "x1"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D

    return-wide p1
.end method

.method static synthetic access$402(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p1, "x1"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D

    return-wide p1
.end method

.method static synthetic access$502(Lorg/apache/mina/core/session/AbstractIoSession;D)D
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/session/AbstractIoSession;
    .param p1, "x1"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D

    return-wide p1
.end method

.method static synthetic access$600()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method private final closeOnFlush()Lorg/apache/mina/core/future/CloseFuture;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/AbstractIoSession;->CLOSE_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, p0, v1}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 316
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    .line 317
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method private decreaseScheduledWriteMessages()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 901
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->decreaseScheduledWriteMessages()V

    .line 904
    :cond_0
    return-void
.end method

.method private getIdAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1233
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "id":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    return-object v0
.end method

.method private getReadyReadFutures()Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/future/ReadFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 406
    .local v1, "readyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    if-nez v1, :cond_0

    .line 407
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v1    # "readyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 409
    .restart local v1    # "readyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->READY_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v2, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 411
    .local v0, "oldReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    if-eqz v0, :cond_0

    .line 412
    move-object v1, v0

    .line 415
    .end local v0    # "oldReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    :cond_0
    return-object v1
.end method

.method private getServiceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1249
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    .line 1250
    .local v0, "tm":Lorg/apache/mina/core/service/TransportMetadata;
    if-nez v0, :cond_0

    .line 1251
    const-string v1, "null"

    .line 1254
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getWaitingReadFutures()Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/future/ReadFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 423
    .local v1, "waitingReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    if-nez v1, :cond_0

    .line 424
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v1    # "waitingReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 426
    .restart local v1    # "waitingReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->WAITING_READ_FUTURES_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0, v2, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 428
    .local v0, "oldWaitingReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    if-eqz v0, :cond_0

    .line 429
    move-object v1, v0

    .line 432
    .end local v0    # "oldWaitingReadyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    :cond_0
    return-object v1
.end method

.method private newReadFuture()Lorg/apache/mina/core/future/ReadFuture;
    .locals 4

    .prologue
    .line 388
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v1

    .line 389
    .local v1, "readyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWaitingReadFutures()Ljava/util/Queue;

    move-result-object v2

    .line 391
    .local v2, "waitingReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    monitor-enter v1

    .line 392
    :try_start_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    .line 393
    .local v0, "future":Lorg/apache/mina/core/future/ReadFuture;
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lorg/apache/mina/core/future/DefaultReadFuture;

    .end local v0    # "future":Lorg/apache/mina/core/future/ReadFuture;
    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultReadFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 395
    .restart local v0    # "future":Lorg/apache/mina/core/future/ReadFuture;
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    monitor-exit v1

    .line 398
    return-object v0

    .line 397
    .end local v0    # "future":Lorg/apache/mina/core/future/ReadFuture;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static notifyIdleSession(Lorg/apache/mina/core/session/IoSession;J)V
    .locals 8
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "currentTime"    # J

    .prologue
    .line 1287
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v3

    sget-object v5, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastIoTime()J

    move-result-wide v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V

    .line 1290
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v3

    sget-object v5, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastReadTime()J

    move-result-wide v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V

    .line 1294
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v3

    sget-object v5, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastWriteTime()J

    move-result-wide v0

    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p0, v2}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V

    .line 1298
    invoke-static {p0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyWriteTimeout(Lorg/apache/mina/core/session/IoSession;J)V

    .line 1299
    return-void
.end method

.method private static notifyIdleSession0(Lorg/apache/mina/core/session/IoSession;JJLorg/apache/mina/core/session/IdleStatus;J)V
    .locals 3
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "currentTime"    # J
    .param p3, "idleTime"    # J
    .param p5, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p6, "lastIoTime"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 1303
    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    cmp-long v0, p6, v1

    if-eqz v0, :cond_0

    sub-long v0, p1, p6

    cmp-long v0, v0, p3

    if-ltz v0, :cond_0

    .line 1304
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, p5}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    .line 1306
    :cond_0
    return-void
.end method

.method public static notifyIdleness(Ljava/util/Iterator;J)V
    .locals 2
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p0, "sessions":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/mina/core/session/IoSession;>;"
    const/4 v0, 0x0

    .line 1273
    .local v0, "s":Lorg/apache/mina/core/session/IoSession;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    .line 1275
    .restart local v0    # "s":Lorg/apache/mina/core/session/IoSession;
    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleSession(Lorg/apache/mina/core/session/IoSession;J)V

    goto :goto_0

    .line 1277
    :cond_0
    return-void
.end method

.method private static notifyWriteTimeout(Lorg/apache/mina/core/session/IoSession;J)V
    .locals 6
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "currentTime"    # J

    .prologue
    .line 1310
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSessionConfig;->getWriteTimeoutInMillis()J

    move-result-wide v2

    .line 1311
    .local v2, "writeTimeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getLastWriteTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_0

    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v4

    invoke-interface {v4, p0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1313
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    .line 1314
    .local v1, "request":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v1, :cond_0

    .line 1315
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Lorg/apache/mina/core/session/IoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1316
    new-instance v0, Lorg/apache/mina/core/write/WriteTimeoutException;

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/WriteTimeoutException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1317
    .local v0, "cause":Lorg/apache/mina/core/write/WriteTimeoutException;
    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 1318
    invoke-interface {p0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 1320
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 1323
    .end local v0    # "cause":Lorg/apache/mina/core/write/WriteTimeoutException;
    .end local v1    # "request":Lorg/apache/mina/core/write/WriteRequest;
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()Lorg/apache/mina/core/future/CloseFuture;
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    monitor-exit v1

    .line 311
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closing:Z

    .line 308
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterClose()V

    .line 311
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close(Z)Lorg/apache/mina/core/future/CloseFuture;
    .locals 1
    .param p1, "rightNow"    # Z

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->close()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->closeOnFlush()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_0
.end method

.method public final containsAttribute(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 599
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->containsAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final decreaseReadBufferSize()V
    .locals 2

    .prologue
    .line 976
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    if-eqz v0, :cond_0

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    .line 986
    :goto_0
    return-void

    .line 981
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMinReadBufferSize()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 982
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    .line 985
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    goto :goto_0
.end method

.method public final decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 910
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 911
    .local v1, "message":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 912
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 913
    .local v0, "b":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v1    # "message":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    .line 921
    .end local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    return-void

    .line 916
    .restart local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v1    # "message":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledWriteMessages()V

    goto :goto_0

    .line 919
    .end local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledWriteMessages()V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1194
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAttachment()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 522
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 543
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->getAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->getAttributeKeys(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeMap()Lorg/apache/mina/core/session/IoSessionAttributeMap;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    return-object v0
.end method

.method public final getBothIdleCount()I
    .locals 1

    .prologue
    .line 1130
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    return-object v0
.end method

.method public final getCreationTime()J
    .locals 2

    .prologue
    .line 992
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->creationTime:J

    return-wide v0
.end method

.method public final getCurrentWriteMessage()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 944
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    .line 945
    .local v0, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-nez v0, :cond_0

    .line 946
    const/4 v1, 0x0

    .line 948
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->currentWriteRequest:Lorg/apache/mina/core/write/WriteRequest;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->sessionId:J

    return-wide v0
.end method

.method public final getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    const/4 v1, 0x0

    .line 1060
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1061
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 1062
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1065
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 1066
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1069
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 1070
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1074
    :cond_2
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_3

    .line 1075
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1083
    :goto_0
    return v0

    .line 1078
    :cond_3
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_4

    .line 1079
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 1082
    :cond_4
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_5

    .line 1083
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 1086
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLastBothIdleTime()J
    .locals 2

    .prologue
    .line 1137
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 1093
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 1094
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForBoth:J

    .line 1102
    :goto_0
    return-wide v0

    .line 1097
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 1098
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForRead:J

    goto :goto_0

    .line 1101
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 1102
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForWrite:J

    goto :goto_0

    .line 1105
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLastIoTime()J
    .locals 4

    .prologue
    .line 999
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastReadTime()J
    .locals 2

    .prologue
    .line 1006
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    return-wide v0
.end method

.method public final getLastReaderIdleTime()J
    .locals 2

    .prologue
    .line 1144
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastWriteTime()J
    .locals 2

    .prologue
    .line 1013
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    return-wide v0
.end method

.method public final getLastWriterIdleTime()J
    .locals 2

    .prologue
    .line 1151
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getProcessor()Lorg/apache/mina/core/service/IoProcessor;
.end method

.method public final getReadBytes()J
    .locals 2

    .prologue
    .line 697
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    return-wide v0
.end method

.method public final getReadBytesThroughput()D
    .locals 2

    .prologue
    .line 725
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D

    return-wide v0
.end method

.method public final getReadMessages()J
    .locals 2

    .prologue
    .line 711
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    return-wide v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 2

    .prologue
    .line 739
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D

    return-wide v0
.end method

.method public final getReaderIdleCount()I
    .locals 1

    .prologue
    .line 1158
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getScheduledWriteBytes()J
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getService()Lorg/apache/mina/core/service/IoService;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->service:Lorg/apache/mina/core/service/IoService;

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    .line 1173
    .local v0, "service":Lorg/apache/mina/core/service/IoService;
    instance-of v1, v0, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v1, :cond_0

    .line 1174
    check-cast v0, Lorg/apache/mina/core/service/IoAcceptor;

    .end local v0    # "service":Lorg/apache/mina/core/service/IoService;
    invoke-interface {v0}, Lorg/apache/mina/core/service/IoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 1177
    :goto_0
    return-object v1

    .restart local v0    # "service":Lorg/apache/mina/core/service/IoService;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    goto :goto_0
.end method

.method public final getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    if-nez v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 930
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    return-object v0
.end method

.method public final getWriterIdleCount()I
    .locals 1

    .prologue
    .line 1165
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getWrittenBytes()J
    .locals 2

    .prologue
    .line 704
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    return-wide v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 2

    .prologue
    .line 732
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D

    return-wide v0
.end method

.method public final getWrittenMessages()J
    .locals 2

    .prologue
    .line 718
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    return-wide v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 2

    .prologue
    .line 746
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1185
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final increaseIdleCount(Lorg/apache/mina/core/session/IdleStatus;J)V
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p2, "currentTime"    # J

    .prologue
    .line 1112
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 1113
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1114
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForBoth:J

    .line 1124
    :goto_0
    return-void

    .line 1115
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 1116
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1117
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForRead:J

    goto :goto_0

    .line 1118
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 1119
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1120
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastIdleTimeForWrite:J

    goto :goto_0

    .line 1122
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final increaseReadBufferSize()V
    .locals 3

    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 963
    .local v0, "newReadBufferSize":I
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 964
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    .line 969
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->deferDecreaseReadBuffer:Z

    .line 970
    return-void

    .line 966
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    goto :goto_0
.end method

.method public final increaseReadBytes(JJ)V
    .locals 3
    .param p1, "increment"    # J
    .param p3, "currentTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 807
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    .line 812
    iput-wide p3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    .line 813
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 814
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 816
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseReadBytes(JJ)V

    goto :goto_0
.end method

.method public final increaseReadMessages(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 825
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    .line 826
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadTime:J

    .line 827
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 828
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 830
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseReadMessages(J)V

    .line 833
    :cond_0
    return-void
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 1
    .param p1, "increment"    # I

    .prologue
    .line 880
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 881
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseScheduledWriteBytes(I)V

    .line 884
    :cond_0
    return-void
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 891
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseScheduledWriteMessages()V

    .line 894
    :cond_0
    return-void
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 5
    .param p1, "increment"    # I
    .param p2, "currentTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 839
    if-gtz p1, :cond_0

    .line 853
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    .line 844
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    .line 845
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 846
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 848
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v0, :cond_1

    .line 849
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseWrittenBytes(IJ)V

    .line 852
    :cond_1
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    goto :goto_0
.end method

.method public final increaseWrittenMessages(Lorg/apache/mina/core/write/WriteRequest;J)V
    .locals 6
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "currentTime"    # J

    .prologue
    .line 859
    invoke-interface {p1}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 860
    .local v1, "message":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 861
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 862
    .local v0, "b":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    .end local v0    # "b":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-wide v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    .line 868
    iput-wide p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWriteTime:J

    .line 869
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/mina/core/service/AbstractIoService;

    if-eqz v2, :cond_1

    .line 870
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/apache/mina/core/service/IoServiceStatistics;->increaseWrittenMessages(J)V

    .line 873
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledWriteMessages()V

    goto :goto_0
.end method

.method public final isBothIdle()Z
    .locals 1

    .prologue
    .line 1039
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result v0

    return v0
.end method

.method public final isClosing()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->closeFuture:Lorg/apache/mina/core/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1020
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v2, :cond_2

    .line 1021
    iget-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForBoth:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1021
    goto :goto_0

    .line 1024
    :cond_2
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v2, :cond_3

    .line 1025
    iget-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForRead:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1028
    :cond_3
    sget-object v2, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v2, :cond_4

    .line 1029
    iget-object v2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->idleCountForWrite:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1032
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReadSuspended()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    return v0
.end method

.method public final isReaderIdle()Z
    .locals 1

    .prologue
    .line 1046
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result v0

    return v0
.end method

.method public final isScheduledForFlush()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWriteSuspended()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    return v0
.end method

.method public final isWriterIdle()Z
    .locals 1

    .prologue
    .line 1053
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result v0

    return v0
.end method

.method public final offerClosedReadFuture()V
    .locals 2

    .prologue
    .line 378
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v0

    .line 379
    .local v0, "readyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    monitor-enter v0

    .line 380
    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->newReadFuture()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/ReadFuture;->setClosed()V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final offerFailedReadFuture(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->newReadFuture()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/future/ReadFuture;->setException(Ljava/lang/Throwable;)V

    .line 372
    return-void
.end method

.method public final offerReadFuture(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 364
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->newReadFuture()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/future/ReadFuture;->setRead(Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public final read()Lorg/apache/mina/core/future/ReadFuture;
    .locals 4

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "useReadOperation is not enabled."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getReadyReadFutures()Ljava/util/Queue;

    move-result-object v1

    .line 344
    .local v1, "readyReadFutures":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/mina/core/future/ReadFuture;>;"
    monitor-enter v1

    .line 345
    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    .line 346
    .local v0, "future":Lorg/apache/mina/core/future/ReadFuture;
    if-eqz v0, :cond_2

    .line 347
    invoke-interface {v0}, Lorg/apache/mina/core/future/ReadFuture;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    :goto_0
    monitor-exit v1

    .line 357
    return-object v0

    .line 352
    :cond_2
    new-instance v0, Lorg/apache/mina/core/future/DefaultReadFuture;

    .end local v0    # "future":Lorg/apache/mina/core/future/ReadFuture;
    invoke-direct {v0, p0}, Lorg/apache/mina/core/future/DefaultReadFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 353
    .restart local v0    # "future":Lorg/apache/mina/core/future/ReadFuture;
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWaitingReadFutures()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    .end local v0    # "future":Lorg/apache/mina/core/future/ReadFuture;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final removeAttribute(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->removeAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final replaceAttribute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 592
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->replaceAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final resumeRead()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    .line 661
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public final resumeWrite()V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    .line 673
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public final scheduledForFlush()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    return-void
.end method

.method public final setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 529
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 557
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->setAttribute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAttributeIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 571
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/mina/core/session/IoSessionAttributeMap;->setAttributeIfAbsent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V
    .locals 0
    .param p1, "attributes"    # Lorg/apache/mina/core/session/IoSessionAttributeMap;

    .prologue
    .line 620
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->attributes:Lorg/apache/mina/core/session/IoSessionAttributeMap;

    .line 621
    return-void
.end method

.method public final setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p1, "currentWriteRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 955
    iput-object p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->currentWriteRequest:Lorg/apache/mina/core/write/WriteRequest;

    .line 956
    return-void
.end method

.method public final setScheduledForFlush(Z)Z
    .locals 2
    .param p1, "schedule"    # Z

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 280
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setScheduledWriteBytes(I)V
    .locals 1
    .param p1, "byteCount"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 794
    return-void
.end method

.method protected setScheduledWriteMessages(I)V
    .locals 1
    .param p1, "messages"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 801
    return-void
.end method

.method public final setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    .locals 1
    .param p1, "writeRequestQueue"    # Lorg/apache/mina/core/write/WriteRequestQueue;

    .prologue
    .line 630
    new-instance v0, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$CloseAwareWriteQueue;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequestQueue;)V

    iput-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeRequestQueue:Lorg/apache/mina/core/write/WriteRequestQueue;

    .line 631
    return-void
.end method

.method public final suspendRead()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readSuspended:Z

    .line 638
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public final suspendWrite()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writeSuspended:Z

    .line 649
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x29

    .line 1202
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1203
    :cond_0
    const/4 v1, 0x0

    .line 1204
    .local v1, "remote":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1207
    .local v0, "local":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1213
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1218
    :goto_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v3, :cond_1

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", server, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    .end local v0    # "local":Ljava/lang/String;
    .end local v1    # "remote":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 1208
    .restart local v0    # "local":Ljava/lang/String;
    .restart local v1    # "remote":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1209
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get the remote address informations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1214
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 1215
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get the local address informations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1223
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1226
    .end local v0    # "local":Ljava/lang/String;
    .end local v1    # "remote":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Session disconnected ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public final unscheduledForFlush()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->scheduledForFlush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    return-void
.end method

.method public final updateThroughput(JZ)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "force"    # Z

    .prologue
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 753
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastThroughputCalculationTime:J

    sub-long v3, p1, v3

    long-to-int v0, v3

    .line 755
    .local v0, "interval":I
    invoke-virtual {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSessionConfig;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v1

    .line 756
    .local v1, "minInterval":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 757
    :cond_0
    if-nez p3, :cond_1

    .line 773
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    iget-wide v5, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadBytes:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytesThroughput:D

    .line 763
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    iget-wide v5, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenBytes:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytesThroughput:D

    .line 764
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    iget-wide v5, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadMessages:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessagesThroughput:D

    .line 765
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    iget-wide v5, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenMessages:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessagesThroughput:D

    .line 767
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readBytes:J

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadBytes:J

    .line 768
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenBytes:J

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenBytes:J

    .line 769
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->readMessages:J

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastReadMessages:J

    .line 770
    iget-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->writtenMessages:J

    iput-wide v3, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastWrittenMessages:J

    .line 772
    iput-wide p1, p0, Lorg/apache/mina/core/session/AbstractIoSession;->lastThroughputCalculationTime:J

    goto :goto_0
.end method

.method public write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 22
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trying to write a null message : not allowed"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/service/TransportMetadata;->isConnectionless()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 453
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 459
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isClosing()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 460
    :cond_2
    new-instance v16, Lorg/apache/mina/core/future/DefaultWriteFuture;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 461
    .local v16, "future":Lorg/apache/mina/core/future/WriteFuture;
    new-instance v18, Lorg/apache/mina/core/write/DefaultWriteRequest;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 462
    .local v18, "request":Lorg/apache/mina/core/write/WriteRequest;
    new-instance v19, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 463
    .local v19, "writeException":Lorg/apache/mina/core/write/WriteException;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    move-object/from16 v20, v16

    .line 515
    .end local v16    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .end local v18    # "request":Lorg/apache/mina/core/write/WriteRequest;
    .end local v19    # "writeException":Lorg/apache/mina/core/write/WriteException;
    .end local p1    # "message":Ljava/lang/Object;
    :cond_3
    :goto_0
    return-object v20

    .line 467
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_4
    const/16 v17, 0x0

    .line 472
    .local v17, "openedFileChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5

    .line 474
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "message is empty. Forgot to call flip()?"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local p1    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v13

    move-object/from16 v8, v17

    .line 484
    .end local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .local v8, "openedFileChannel":Ljava/nio/channels/FileChannel;
    .local v13, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v13}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 485
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v20

    goto :goto_0

    .line 475
    .end local v8    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .restart local p1    # "message":Ljava/lang/Object;
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_6

    .line 476
    move-object/from16 v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    move-object v5, v0

    .line 477
    .local v5, "fileChannel":Ljava/nio/channels/FileChannel;
    new-instance p1, Lorg/apache/mina/core/file/DefaultFileRegion;

    .end local p1    # "message":Ljava/lang/Object;
    const-wide/16 v6, 0x0

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    move-object/from16 v4, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local p1, "message":Lorg/apache/mina/core/file/DefaultFileRegion;
    move-object/from16 v8, v17

    .line 489
    .end local v5    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .end local p1    # "message":Lorg/apache/mina/core/file/DefaultFileRegion;
    .restart local v8    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    :goto_2
    new-instance v20, Lorg/apache/mina/core/future/DefaultWriteFuture;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 490
    .local v20, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    new-instance v21, Lorg/apache/mina/core/write/DefaultWriteRequest;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    .line 493
    .local v21, "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v14

    .line 494
    .local v14, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 499
    if-eqz v8, :cond_3

    .line 502
    move-object v15, v8

    .line 503
    .local v15, "finalChannel":Ljava/nio/channels/FileChannel;
    new-instance v4, Lorg/apache/mina/core/session/AbstractIoSession$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/apache/mina/core/session/AbstractIoSession$2;-><init>(Lorg/apache/mina/core/session/AbstractIoSession;Ljava/nio/channels/FileChannel;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0

    .line 478
    .end local v8    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .end local v14    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .end local v15    # "finalChannel":Ljava/nio/channels/FileChannel;
    .end local v20    # "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    .end local v21    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .local p1, "message":Ljava/lang/Object;
    :cond_6
    :try_start_2
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/io/File;

    if-eqz v4, :cond_7

    .line 479
    move-object/from16 v0, p1

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .line 480
    .local v7, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 481
    .end local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .restart local v8    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    :try_start_3
    new-instance p1, Lorg/apache/mina/core/file/FilenameFileRegion;

    .end local p1    # "message":Ljava/lang/Object;
    const-wide/16 v9, 0x0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    move-object/from16 v6, p1

    invoke-direct/range {v6 .. v12}, Lorg/apache/mina/core/file/FilenameFileRegion;-><init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .local p1, "message":Lorg/apache/mina/core/file/FilenameFileRegion;
    goto :goto_2

    .line 483
    .end local p1    # "message":Lorg/apache/mina/core/file/FilenameFileRegion;
    :catch_1
    move-exception v13

    goto :goto_1

    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .restart local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .local p1, "message":Ljava/lang/Object;
    :cond_7
    move-object/from16 v8, v17

    .end local v17    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    .restart local v8    # "openedFileChannel":Ljava/nio/channels/FileChannel;
    goto :goto_2
.end method
