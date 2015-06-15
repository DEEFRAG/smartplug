.class public Lorg/apache/mina/core/service/IoServiceStatistics;
.super Ljava/lang/Object;
.source "IoServiceStatistics.java"


# instance fields
.field private largestReadBytesThroughput:D

.field private largestReadMessagesThroughput:D

.field private largestWrittenBytesThroughput:D

.field private largestWrittenMessagesThroughput:D

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private final readBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private readBytesThroughput:D

.field private final readMessages:Ljava/util/concurrent/atomic/AtomicLong;

.field private readMessagesThroughput:D

.field private final scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private service:Lorg/apache/mina/core/service/AbstractIoService;

.field private throughputCalculationInterval:I

.field private final throughputCalculationLock:Ljava/lang/Object;

.field private final writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private writtenBytesThroughput:D

.field private final writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

.field private writtenMessagesThroughput:D


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/AbstractIoService;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/mina/core/service/AbstractIoService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    .line 67
    return-void
.end method

.method private resetThroughput()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 257
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessionCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iput-wide v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    .line 259
    iput-wide v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    .line 260
    iput-wide v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    .line 261
    iput-wide v1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public final decreaseScheduledWriteMessages()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 381
    return-void
.end method

.method public final getCumulativeManagedSessionCount()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getCumulativeManagedSessionCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLargestManagedSessionCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getLargestManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getLargestReadBytesThroughput()D
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    return-wide v0
.end method

.method public final getLargestReadMessagesThroughput()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    return-wide v0
.end method

.method public final getLargestWrittenBytesThroughput()D
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    return-wide v0
.end method

.method public final getLargestWrittenMessagesThroughput()D
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    return-wide v0
.end method

.method public final getLastIoTime()J
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastReadTime()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    return-wide v0
.end method

.method public final getLastWriteTime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    return-wide v0
.end method

.method public final getReadBytes()J
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReadBytesThroughput()D
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 152
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    return-wide v0
.end method

.method public final getReadMessages()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 168
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    return-wide v0
.end method

.method public final getScheduledWriteBytes()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getThroughputCalculationInterval()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    return v0
.end method

.method public final getThroughputCalculationIntervalInMillis()J
    .locals 4

    .prologue
    .line 220
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getWrittenBytes()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 160
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    return-wide v0
.end method

.method public final getWrittenMessages()J
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    .line 176
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    return-wide v0
.end method

.method public final increaseReadBytes(JJ)V
    .locals 1
    .param p1, "increment"    # J
    .param p3, "currentTime"    # J

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 318
    iput-wide p3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    .line 319
    return-void
.end method

.method public final increaseReadMessages(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 327
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    .line 328
    return-void
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 1
    .param p1, "increment"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 360
    return-void
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 374
    return-void
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 3
    .param p1, "increment"    # I
    .param p2, "currentTime"    # J

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 336
    iput-wide p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    .line 337
    return-void
.end method

.method public final increaseWrittenMessages(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 345
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    .line 346
    return-void
.end method

.method protected final setLastReadTime(J)V
    .locals 0
    .param p1, "lastReadTime"    # J

    .prologue
    .line 242
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    .line 243
    return-void
.end method

.method protected setLastThroughputCalculationTime(J)V
    .locals 0
    .param p1, "lastThroughputCalculationTime"    # J

    .prologue
    .line 388
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    .line 389
    return-void
.end method

.method protected final setLastWriteTime(J)V
    .locals 0
    .param p1, "lastWriteTime"    # J

    .prologue
    .line 249
    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    .line 250
    return-void
.end method

.method public final setThroughputCalculationInterval(I)V
    .locals 3
    .param p1, "throughputCalculationInterval"    # I

    .prologue
    .line 229
    if-gez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throughputCalculationInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    .line 236
    return-void
.end method

.method public updateThroughput(J)V
    .locals 20
    .param p1, "currentTime"    # J

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/lang/Object;

    monitor-enter v15

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    move-wide/from16 v16, v0

    sub-long v16, p1, v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    .line 271
    .local v3, "interval":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v4

    .line 272
    .local v4, "minInterval":J
    const-wide/16 v16, 0x0

    cmp-long v14, v4, v16

    if-eqz v14, :cond_0

    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v14, v16, v4

    if-gez v14, :cond_1

    .line 273
    :cond_0
    monitor-exit v15

    .line 310
    :goto_0
    return-void

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 277
    .local v6, "readBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 278
    .local v10, "writtenBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 279
    .local v8, "readMessages":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 281
    .local v12, "writtenMessages":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    move-wide/from16 v16, v0

    sub-long v16, v6, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    int-to-double v0, v3

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    .line 283
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    int-to-double v0, v3

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    .line 285
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    int-to-double v0, v3

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    .line 287
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    int-to-double v0, v3

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    move-wide/from16 v18, v0

    cmpl-double v14, v16, v18

    if-lez v14, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    .line 293
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    move-wide/from16 v18, v0

    cmpl-double v14, v16, v18

    if-lez v14, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    move-wide/from16 v18, v0

    cmpl-double v14, v16, v18

    if-lez v14, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    .line 299
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    move-wide/from16 v18, v0

    cmpl-double v14, v16, v18

    if-lez v14, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    .line 303
    :cond_5
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    .line 304
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    .line 305
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    .line 306
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    .line 308
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    .line 309
    monitor-exit v15

    goto/16 :goto_0

    .end local v3    # "interval":I
    .end local v4    # "minInterval":J
    .end local v6    # "readBytes":J
    .end local v8    # "readMessages":J
    .end local v10    # "writtenBytes":J
    .end local v12    # "writtenMessages":J
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method
