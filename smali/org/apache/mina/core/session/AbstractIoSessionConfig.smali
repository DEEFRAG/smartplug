.class public abstract Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.super Ljava/lang/Object;
.source "AbstractIoSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionConfig;


# instance fields
.field private idleTimeForBoth:I

.field private idleTimeForRead:I

.field private idleTimeForWrite:I

.field private maxReadBufferSize:I

.field private minReadBufferSize:I

.field private readBufferSize:I

.field private throughputCalculationInterval:I

.field private useReadOperation:Z

.field private writeTimeout:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    .line 32
    const/16 v0, 0x800

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    .line 33
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    .line 37
    const/16 v0, 0x3c

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
.end method

.method public final getBothIdleTime()I
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getBothIdleTimeInMillis()J
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 136
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_0

    .line 137
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForBoth:I

    .line 145
    :goto_0
    return v0

    .line 140
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 141
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForRead:I

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 145
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForWrite:I

    goto :goto_0

    .line 148
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

.method public getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J
    .locals 4
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxReadBufferSize()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    return v0
.end method

.method public getMinReadBufferSize()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    return v0
.end method

.method public getReadBufferSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    return v0
.end method

.method public final getReaderIdleTime()I
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getReaderIdleTimeInMillis()J
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThroughputCalculationInterval()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    return v0
.end method

.method public getThroughputCalculationIntervalInMillis()J
    .locals 4

    .prologue
    .line 302
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    return v0
.end method

.method public getWriteTimeoutInMillis()J
    .locals 4

    .prologue
    .line 251
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getWriterIdleTime()I
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v0

    return v0
.end method

.method public final getWriterIdleTimeInMillis()J
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->getIdleTimeInMillis(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isUseReadOperation()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->useReadOperation:Z

    return v0
.end method

.method public final setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setReadBufferSize(I)V

    .line 54
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMinReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setMinReadBufferSize(I)V

    .line 55
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setMaxReadBufferSize(I)V

    .line 56
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 57
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 58
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    sget-object v1, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getIdleTime(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 59
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getWriteTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setWriteTimeout(I)V

    .line 60
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setUseReadOperation(Z)V

    .line 61
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSessionConfig;->getThroughputCalculationInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setThroughputCalculationInterval(I)V

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 64
    return-void
.end method

.method public setBothIdleTime(I)V
    .locals 1
    .param p1, "idleTime"    # I

    .prologue
    .line 223
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 224
    return-void
.end method

.method public setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V
    .locals 3
    .param p1, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .param p2, "idleTime"    # I

    .prologue
    .line 162
    if-gez p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal idle time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_1

    .line 167
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForBoth:I

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_1
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_2

    .line 169
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForRead:I

    goto :goto_0

    .line 170
    :cond_2
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    if-ne p1, v0, :cond_3

    .line 171
    iput p2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->idleTimeForWrite:I

    goto :goto_0

    .line 173
    :cond_3
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

.method public setMaxReadBufferSize(I)V
    .locals 3
    .param p1, "maxReadBufferSize"    # I

    .prologue
    .line 121
    if-gtz p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxReadBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    if-ge p1, v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxReadBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    .line 130
    return-void
.end method

.method public setMinReadBufferSize(I)V
    .locals 3
    .param p1, "minReadBufferSize"    # I

    .prologue
    .line 100
    if-gtz p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minReadBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget v0, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    if-le p1, v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minReadBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: smaller than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->maxReadBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->minReadBufferSize:I

    .line 108
    return-void
.end method

.method public setReadBufferSize(I)V
    .locals 3
    .param p1, "readBufferSize"    # I

    .prologue
    .line 83
    if-gtz p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->readBufferSize:I

    .line 87
    return-void
.end method

.method public setReaderIdleTime(I)V
    .locals 1
    .param p1, "idleTime"    # I

    .prologue
    .line 230
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 231
    return-void
.end method

.method public setThroughputCalculationInterval(I)V
    .locals 3
    .param p1, "throughputCalculationInterval"    # I

    .prologue
    .line 290
    if-gez p1, :cond_0

    .line 291
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

    .line 295
    :cond_0
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->throughputCalculationInterval:I

    .line 296
    return-void
.end method

.method public setUseReadOperation(Z)V
    .locals 0
    .param p1, "useReadOperation"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->useReadOperation:Z

    .line 277
    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 3
    .param p1, "writeTimeout"    # I

    .prologue
    .line 258
    if-gez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal write timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput p1, p0, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->writeTimeout:I

    .line 263
    return-void
.end method

.method public setWriterIdleTime(I)V
    .locals 1
    .param p1, "idleTime"    # I

    .prologue
    .line 237
    sget-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    .line 238
    return-void
.end method
