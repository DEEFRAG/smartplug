.class public Lorg/apache/log4j/helpers/BoundedFIFO;
.super Ljava/lang/Object;


# instance fields
.field buf:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field maxSize:I

.field next:I

.field numElements:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    return-void
.end method


# virtual methods
.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    :cond_1
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    move-object v0, v1

    goto :goto_0
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    return v0
.end method

.method public isFull()Z
    .locals 2

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    return v0
.end method

.method min(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public put(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 2

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    aput-object p1, v0, v1

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    :cond_0
    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    :cond_1
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-array v1, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, p1}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v2

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v4, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-ge v2, v3, :cond_2

    if-ge v2, p1, :cond_2

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    sub-int/2addr v0, v2

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/helpers/BoundedFIFO;->min(II)I

    move-result v0

    iget-object v3, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->buf:[Lorg/apache/log4j/spi/LoggingEvent;

    iput p1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->first:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->next:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wasEmpty()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasFull()Z
    .locals 2

    iget v0, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->numElements:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/log4j/helpers/BoundedFIFO;->maxSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
