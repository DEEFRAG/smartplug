.class public Lorg/apache/log4j/helpers/CyclicBuffer;
.super Ljava/lang/Object;


# instance fields
.field ea:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field last:I

.field maxSize:I

.field numElems:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    aput-object p1, v0, v1

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    :cond_0
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, v1, :cond_1

    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    goto :goto_0
.end method

.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aput-object v1, v2, v3

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public get(I)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    return v0
.end method

.method public resize(I)V
    .locals 7

    const/4 v2, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Negative array size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-array v3, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ge p1, v0, :cond_3

    move v0, p1

    :goto_1
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v5, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    iget-object v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v5, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v5, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne v4, v5, :cond_2

    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    goto :goto_1

    :cond_4
    iput-object v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, p1, :cond_5

    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_0

    :cond_5
    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_0
.end method
