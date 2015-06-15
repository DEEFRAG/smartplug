.class public abstract Lorg/apache/mina/core/buffer/AbstractIoBuffer;
.super Lorg/apache/mina/core/buffer/IoBuffer;
.source "AbstractIoBuffer.java"


# static fields
.field private static final BYTE_MASK:J = 0xffL

.field private static final INT_MASK:J = 0xffffffffL

.field private static final SHORT_MASK:J = 0xffffL


# instance fields
.field private autoExpand:Z

.field private autoShrink:Z

.field private final derived:Z

.field private mark:I

.field private minimumCapacity:I

.field private recapacityAllowed:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/buffer/AbstractIoBuffer;

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 108
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 110
    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    .line 111
    iget v0, p1, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    .line 112
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/buffer/IoBufferAllocator;I)V
    .locals 2
    .param p1, "allocator"    # Lorg/apache/mina/core/buffer/IoBufferAllocator;
    .param p2, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Lorg/apache/mina/core/buffer/IoBuffer;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 95
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->setAllocator(Lorg/apache/mina/core/buffer/IoBufferAllocator;)V

    .line 96
    iput-boolean v1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    .line 98
    iput p2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    .line 99
    return-void
.end method

.method private autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "expectedRemaining"    # I

    .prologue
    .line 2771
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2772
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2774
    :cond_0
    return-object p0
.end method

.method private autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I

    .prologue
    .line 2782
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2785
    :cond_0
    return-object p0
.end method

.method private static checkFieldSize(I)V
    .locals 3
    .param p0, "fieldSize"    # I

    .prologue
    .line 2789
    if-gez p0, :cond_0

    .line 2790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2793
    :cond_0
    return-void
.end method

.method private enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2575
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const-string v0, "%s.%s has an ordinal value too large for a %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I
    .param p3, "autoExpand"    # Z

    .prologue
    .line 276
    iget-boolean v2, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-nez v2, :cond_0

    .line 277
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_0
    add-int v0, p1, p2

    .line 283
    .local v0, "end":I
    if-eqz p3, :cond_3

    .line 284
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->normalizeCapacity(I)I

    move-result v1

    .line 288
    .local v1, "newCapacity":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 293
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 295
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 297
    :cond_2
    return-object p0

    .line 286
    .end local v1    # "newCapacity":I
    :cond_3
    move v1, v0

    .restart local v1    # "newCapacity":I
    goto :goto_0
.end method

.method private expand(IZ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "expectedRemaining"    # I
    .param p2, "autoExpand"    # Z

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getMediumInt(BBB)I
    .locals 4
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B

    .prologue
    .line 1433
    shl-int/lit8 v1, p1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    and-int/lit16 v2, p3, 0xff

    or-int v0, v1, v2

    .line 1435
    .local v0, "ret":I
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 1437
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 1439
    :cond_0
    return v0
.end method

.method private toEnum(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 6
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I)TE;"
        }
    .end annotation

    .prologue
    .line 2565
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    .line 2566
    .local v0, "enumConstants":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    if-le p2, v1, :cond_0

    .line 2567
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "%d is too large of an ordinal to convert to the enum %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2571
    :cond_0
    aget-object v1, v0, p2

    return-object v1
.end method

.method private toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 9
    .param p2, "vector"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2648
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    .line 2649
    .local v6, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    const-wide/16 v4, 0x1

    .line 2650
    .local v4, "mask":J
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2651
    .local v1, "e":Ljava/lang/Enum;, "TE;"
    and-long v7, v4, p2

    cmp-long v7, v7, v4

    if-nez v7, :cond_0

    .line 2652
    invoke-virtual {v6, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 2654
    :cond_0
    const/4 v7, 0x1

    shl-long/2addr v4, v7

    .line 2650
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2656
    .end local v1    # "e":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-object v6
.end method

.method private toLong(Ljava/util/Set;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Set",
            "<TE;>;)J"
        }
    .end annotation

    .prologue
    .line 2754
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const-wide/16 v2, 0x0

    .line 2755
    .local v2, "vector":J
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 2756
    .local v0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    .line 2757
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The enum set is too large to fit in a bit vector: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2761
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_0

    .line 2763
    .end local v0    # "e":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 1091
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1491
    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$1;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 1003
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1553
    new-instance v0, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$2;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;)V

    return-object v0
.end method

.method public final asReadOnlyBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1144
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract asReadOnlyBuffer0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 799
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract buf(Ljava/nio/ByteBuffer;)V
.end method

.method public final capacity()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public final capacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "newCapacity"    # I

    .prologue
    .line 171
    iget-boolean v5, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-nez v5, :cond_0

    .line 172
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 180
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v4

    .line 181
    .local v4, "pos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 182
    .local v1, "limit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 185
    .local v0, "bo":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 186
    .local v3, "oldBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v6

    invoke-interface {v5, p1, v6}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 188
    .local v2, "newBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 193
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    iget v5, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-ltz v5, :cond_1

    .line 195
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget v6, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 198
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 202
    .end local v0    # "bo":Ljava/nio/ByteOrder;
    .end local v1    # "limit":I
    .end local v2    # "newBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "oldBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "pos":I
    :cond_2
    return-object p0
.end method

.method public final clear()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 430
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 431
    return-object p0
.end method

.method public final compact()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 9

    .prologue
    .line 646
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v6

    .line 647
    .local v6, "remaining":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    .line 649
    .local v1, "capacity":I
    if-nez v1, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-object p0

    .line 653
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoShrink()Z

    move-result v7

    if-eqz v7, :cond_4

    ushr-int/lit8 v7, v1, 0x2

    if-gt v6, v7, :cond_4

    iget v7, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    if-le v1, v7, :cond_4

    .line 655
    move v4, v1

    .line 656
    .local v4, "newCapacity":I
    iget v7, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    shl-int/lit8 v8, v6, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 658
    .local v2, "minCapacity":I
    :goto_1
    ushr-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_2

    .line 664
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 666
    if-eq v4, v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 675
    .local v0, "bo":Ljava/nio/ByteOrder;
    if-le v6, v4, :cond_3

    .line 676
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "The amount of the remaining bytes is greater than the new capacity."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 661
    .end local v0    # "bo":Ljava/nio/ByteOrder;
    :cond_2
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 682
    .restart local v0    # "bo":Ljava/nio/ByteOrder;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 683
    .local v5, "oldBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v8

    invoke-interface {v7, v4, v8}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 685
    .local v3, "newBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 686
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 689
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 693
    .end local v0    # "bo":Ljava/nio/ByteOrder;
    .end local v2    # "minCapacity":I
    .end local v3    # "newBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "newCapacity":I
    .end local v5    # "oldBuf":Ljava/nio/ByteBuffer;
    :goto_2
    const/4 v7, -0x1

    iput v7, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    goto :goto_0

    .line 691
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 8
    .param p1, "that"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 1282
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v2, v5, v6

    .line 1283
    .local v2, "n":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .local v0, "i":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1284
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v3

    .line 1285
    .local v3, "v1":B
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    .line 1286
    .local v4, "v2":B
    if-ne v3, v4, :cond_0

    .line 1283
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1289
    :cond_0
    if-ge v3, v4, :cond_1

    .line 1290
    const/4 v5, -0x1

    .line 1295
    .end local v3    # "v1":B
    .end local v4    # "v2":B
    :goto_1
    return v5

    .line 1293
    .restart local v3    # "v1":B
    .restart local v4    # "v2":B
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 1295
    .end local v3    # "v1":B
    .end local v4    # "v2":B
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_1
.end method

.method public final duplicate()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1159
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract duplicate0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1258
    instance-of v7, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v7, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 1262
    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1263
    .local v3, "that":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1267
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1268
    .local v2, "p":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "j":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 1269
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    .line 1270
    .local v4, "v1":B
    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    .line 1271
    .local v5, "v2":B
    if-ne v4, v5, :cond_0

    .line 1268
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1275
    .end local v4    # "v1":B
    .end local v5    # "v2":B
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final expand(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "expectedRemaining"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final expand(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "expectedRemaining"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->expand(IIZ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 9
    .param p1, "value"    # B
    .param p2, "size"    # I

    .prologue
    .line 2350
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2351
    ushr-int/lit8 v4, p2, 0x3

    .line 2352
    .local v4, "q":I
    and-int/lit8 v5, p2, 0x7

    .line 2354
    .local v5, "r":I
    if-lez v4, :cond_0

    .line 2355
    shl-int/lit8 v7, p1, 0x8

    or-int/2addr v7, p1

    shl-int/lit8 v8, p1, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, p1, 0x18

    or-int v1, v7, v8

    .line 2356
    .local v1, "intValue":I
    int-to-long v2, v1

    .line 2357
    .local v2, "longValue":J
    const/16 v7, 0x20

    shl-long/2addr v2, v7

    .line 2358
    int-to-long v7, v1

    or-long/2addr v2, v7

    .line 2360
    move v0, v4

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2361
    invoke-virtual {p0, v2, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2360
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2365
    .end local v0    # "i":I
    .end local v1    # "intValue":I
    .end local v2    # "longValue":J
    :cond_0
    ushr-int/lit8 v4, v5, 0x2

    .line 2366
    and-int/lit8 v5, v5, 0x3

    .line 2368
    if-lez v4, :cond_1

    .line 2369
    shl-int/lit8 v7, p1, 0x8

    or-int/2addr v7, p1

    shl-int/lit8 v8, p1, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, p1, 0x18

    or-int v1, v7, v8

    .line 2370
    .restart local v1    # "intValue":I
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2373
    .end local v1    # "intValue":I
    :cond_1
    shr-int/lit8 v4, v5, 0x1

    .line 2374
    and-int/lit8 v5, v5, 0x1

    .line 2376
    if-lez v4, :cond_2

    .line 2377
    shl-int/lit8 v7, p1, 0x8

    or-int/2addr v7, p1

    int-to-short v6, v7

    .line 2378
    .local v6, "shortValue":S
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2381
    .end local v6    # "shortValue":S
    :cond_2
    if-lez v5, :cond_3

    .line 2382
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2385
    :cond_3
    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 2408
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2409
    ushr-int/lit8 v1, p1, 0x3

    .line 2410
    .local v1, "q":I
    and-int/lit8 v2, p1, 0x7

    .line 2412
    .local v2, "r":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2413
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2412
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2416
    :cond_0
    ushr-int/lit8 v1, v2, 0x2

    .line 2417
    and-int/lit8 v2, v2, 0x3

    .line 2419
    if-lez v1, :cond_1

    .line 2420
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2423
    :cond_1
    shr-int/lit8 v1, v2, 0x1

    .line 2424
    and-int/lit8 v2, v2, 0x1

    .line 2426
    if-lez v1, :cond_2

    .line 2427
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2430
    :cond_2
    if-lez v2, :cond_3

    .line 2431
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2434
    :cond_3
    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B
    .param p2, "size"    # I

    .prologue
    .line 2393
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2394
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2396
    .local v0, "pos":I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2400
    return-object p0

    .line 2398
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw v1
.end method

.method public fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 2442
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2443
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    .line 2445
    .local v0, "pos":I
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(I)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2450
    return-object p0

    .line 2447
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw v1
.end method

.method public final flip()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 458
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 459
    return-object p0
.end method

.method public final get()B
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public get([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "dst"    # [B

    .prologue
    .line 1326
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final get([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 617
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 618
    return-object p0
.end method

.method public final getChar()C
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public final getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 737
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public final getDouble()D
    .locals 2

    .prologue
    .line 1099
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1117
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEnum(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2466
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2458
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumInt(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2497
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumInt(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2490
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumSet(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2593
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSet(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2584
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetInt(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2627
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetInt(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2618
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetLong(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2644
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetLong(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2635
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetShort(ILjava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2610
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumSetShort(Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2601
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnumSet(Ljava/lang/Class;J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getEnumShort(ILjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2482
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnumShort(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 2474
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toEnum(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public final getFloat()F
    .locals 1

    .prologue
    .line 1055
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1073
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexDump(I)Ljava/lang/String;
    .locals 1
    .param p1, "lengthLimit"    # I

    .prologue
    .line 1579
    invoke-static {p0, p1}, Lorg/apache/mina/core/buffer/IoBufferHexDumper;->getHexdump(Lorg/apache/mina/core/buffer/IoBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInt()I
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 985
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1029
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediumInt()I
    .locals 5

    .prologue
    .line 1374
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    .line 1375
    .local v0, "b1":B
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v1

    .line 1376
    .local v1, "b2":B
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v2

    .line 1377
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1378
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    .line 1381
    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    goto :goto_0
.end method

.method public getMediumInt(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    .line 1405
    .local v0, "b1":B
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v1

    .line 1406
    .local v1, "b2":B
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v2

    .line 1407
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1408
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    .line 1411
    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getMediumInt(BBB)I

    move-result v3

    goto :goto_0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 2171
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2172
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    .line 2175
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v2

    .line 2176
    .local v2, "length":I
    if-gt v2, v5, :cond_1

    .line 2177
    new-instance v4, Lorg/apache/mina/core/buffer/BufferDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object length should be greater than 4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2181
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    .line 2182
    .local v3, "oldLimit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2184
    :try_start_0
    new-instance v1, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, p0, v4, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$3;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 2217
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 2221
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v4

    .line 2218
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 2219
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v4, v0}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2221
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw v4
.end method

.method public getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 10
    .param p1, "prefixLength"    # I
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 1935
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1936
    new-instance v8, Ljava/nio/BufferUnderflowException;

    invoke-direct {v8}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v8

    .line 1939
    :cond_0
    const/4 v3, 0x0

    .line 1941
    .local v3, "fieldSize":I
    packed-switch p1, :pswitch_data_0

    .line 1953
    :goto_0
    :pswitch_0
    if-nez v3, :cond_1

    .line 1954
    const-string v8, ""

    .line 2002
    :goto_1
    return-object v8

    .line 1943
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v3

    .line 1944
    goto :goto_0

    .line 1946
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort()I

    move-result v3

    .line 1947
    goto :goto_0

    .line 1949
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v3

    goto :goto_0

    .line 1957
    :cond_1
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-16"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1959
    .local v7, "utf16":Z
    if-eqz v7, :cond_2

    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_2

    .line 1960
    new-instance v8, Lorg/apache/mina/core/buffer/BufferDataException;

    const-string v9, "fieldSize is not even for a UTF-16 string."

    invoke-direct {v8, v9}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1964
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v5

    .line 1965
    .local v5, "oldLimit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v8

    add-int v1, v8, v3

    .line 1967
    .local v1, "end":I
    if-ge v5, v1, :cond_3

    .line 1968
    new-instance v8, Ljava/nio/BufferUnderflowException;

    invoke-direct {v8}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v8

    .line 1971
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1972
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1974
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v2, v8, 0x1

    .line 1975
    .local v2, "expectedLength":I
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 1978
    .local v6, "out":Ljava/nio/CharBuffer;
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1979
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v6, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 1984
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2000
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2001
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2002
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1981
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {p2, v6}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_3

    .line 1988
    :cond_5
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1989
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->capacity()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1991
    .local v4, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1992
    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 1993
    move-object v6, v4

    .line 1994
    goto :goto_2

    .line 1997
    .end local v4    # "o":Ljava/nio/CharBuffer;
    :cond_6
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    .line 1941
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPrefixedString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 1
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 1919
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getPrefixedString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getShort()S
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 781
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final getSlice(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "length"    # I

    .prologue
    .line 1216
    if-gez p1, :cond_0

    .line 1217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1220
    .local v2, "pos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    .line 1221
    .local v0, "limit":I
    add-int v1, v2, p1

    .line 1222
    .local v1, "nextPos":I
    if-ge v0, v1, :cond_1

    .line 1223
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position + length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is greater "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "than limit ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1227
    :cond_1
    add-int v4, v2, p1

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1228
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 1229
    .local v3, "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1230
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1231
    return-object v3
.end method

.method public final getSlice(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 1182
    if-gez p2, :cond_0

    .line 1183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1187
    .local v2, "pos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    .line 1189
    .local v1, "limit":I
    if-le p1, v1, :cond_1

    .line 1190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1193
    :cond_1
    add-int v0, p1, p2

    .line 1195
    .local v0, "endIndex":I
    if-le v0, v1, :cond_2

    .line 1196
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index + length ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is greater "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "than limit ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1200
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1201
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1202
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1204
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 1205
    .local v3, "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1206
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1208
    return-object v3
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 11
    .param p1, "fieldSize"    # I
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-static {p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    .line 1694
    if-nez p1, :cond_0

    .line 1695
    const-string v9, ""

    .line 1784
    :goto_0
    return-object v9

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1699
    const-string v9, ""

    goto :goto_0

    .line 1702
    :cond_1
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-16"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 1704
    .local v8, "utf16":Z
    if-eqz v8, :cond_2

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_2

    .line 1705
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "fieldSize is not even."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1708
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v6

    .line 1709
    .local v6, "oldPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v5

    .line 1710
    .local v5, "oldLimit":I
    add-int v1, v6, p1

    .line 1712
    .local v1, "end":I
    if-ge v5, v1, :cond_3

    .line 1713
    new-instance v9, Ljava/nio/BufferUnderflowException;

    invoke-direct {v9}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v9

    .line 1718
    :cond_3
    if-nez v8, :cond_7

    .line 1719
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 1720
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v9

    if-nez v9, :cond_5

    .line 1725
    :cond_4
    if-ne v3, v1, :cond_6

    .line 1726
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1744
    :goto_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1745
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1746
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1747
    const-string v9, ""

    goto :goto_0

    .line 1719
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1728
    :cond_6
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 1731
    .end local v3    # "i":I
    :cond_7
    move v3, v6

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_8

    .line 1732
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v9

    if-nez v9, :cond_9

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v9

    if-nez v9, :cond_9

    .line 1737
    :cond_8
    if-ne v3, v1, :cond_a

    .line 1738
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 1731
    :cond_9
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 1740
    :cond_a
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    .line 1749
    :cond_b
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1751
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v2, v9, 0x1

    .line 1752
    .local v2, "expectedLength":I
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v7

    .line 1755
    .local v7, "out":Ljava/nio/CharBuffer;
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1756
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v7, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 1761
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_5
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1782
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1783
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1784
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1758
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_d
    invoke-virtual {p2, v7}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_5

    .line 1765
    :cond_e
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1766
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->capacity()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1768
    .local v4, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1769
    invoke-virtual {v4, v7}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 1770
    move-object v7, v4

    .line 1771
    goto :goto_4

    .line 1774
    .end local v4    # "o":Ljava/nio/CharBuffer;
    :cond_f
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1776
    invoke-virtual {p0, v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1777
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1778
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_4
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 13
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 1588
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1589
    const-string v11, ""

    .line 1683
    :goto_0
    return-object v11

    .line 1592
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-16"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 1594
    .local v9, "utf16":Z
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v7

    .line 1595
    .local v7, "oldPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v6

    .line 1596
    .local v6, "oldLimit":I
    const/4 v1, -0x1

    .line 1599
    .local v1, "end":I
    if-nez v9, :cond_2

    .line 1600
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->indexOf(B)I

    move-result v1

    .line 1601
    if-gez v1, :cond_1

    .line 1602
    move v1, v6

    move v4, v6

    .line 1642
    .local v4, "newPos":I
    :goto_1
    if-ne v7, v1, :cond_9

    .line 1643
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1644
    const-string v11, ""

    goto :goto_0

    .line 1604
    .end local v4    # "newPos":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "newPos":I
    goto :goto_1

    .line 1607
    .end local v4    # "newPos":I
    :cond_2
    move v3, v7

    .line 1609
    .local v3, "i":I
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v11

    if-nez v11, :cond_4

    const/4 v10, 0x1

    .line 1610
    .local v10, "wasZero":Z
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 1612
    if-lt v3, v6, :cond_5

    .line 1631
    :goto_3
    if-gez v1, :cond_7

    .line 1632
    sub-int v11, v6, v7

    and-int/lit8 v11, v11, -0x2

    add-int v1, v7, v11

    move v4, v1

    .restart local v4    # "newPos":I
    goto :goto_1

    .line 1609
    .end local v4    # "newPos":I
    .end local v10    # "wasZero":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 1616
    .restart local v10    # "wasZero":Z
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v11

    if-eqz v11, :cond_6

    .line 1617
    add-int/lit8 v3, v3, 0x1

    .line 1618
    if-lt v3, v6, :cond_3

    goto :goto_3

    .line 1625
    :cond_6
    if-eqz v10, :cond_3

    .line 1626
    add-int/lit8 v1, v3, -0x1

    .line 1627
    goto :goto_3

    .line 1634
    :cond_7
    add-int/lit8 v11, v1, 0x2

    if-gt v11, v6, :cond_8

    .line 1635
    add-int/lit8 v4, v1, 0x2

    .restart local v4    # "newPos":I
    goto :goto_1

    .line 1637
    .end local v4    # "newPos":I
    :cond_8
    move v4, v1

    .restart local v4    # "newPos":I
    goto :goto_1

    .line 1647
    .end local v3    # "i":I
    .end local v10    # "wasZero":Z
    :cond_9
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1648
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1650
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v2, v11, 0x1

    .line 1651
    .local v2, "expectedLength":I
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 1654
    .local v8, "out":Ljava/nio/CharBuffer;
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1655
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v8, v12}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 1660
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_5
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1681
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1682
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1683
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 1657
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_b
    invoke-virtual {p1, v8}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_5

    .line 1664
    :cond_c
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1665
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->capacity()I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v11}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 1667
    .local v5, "o":Ljava/nio/CharBuffer;
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1668
    invoke-virtual {v5, v8}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 1669
    move-object v8, v5

    .line 1670
    goto :goto_4

    .line 1673
    .end local v5    # "o":Ljava/nio/CharBuffer;
    :cond_d
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1675
    invoke-virtual {p0, v6}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1676
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1677
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_4
.end method

.method public final getUnsigned()S
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public final getUnsigned(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedInt()J
    .locals 4

    .prologue
    .line 1366
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1483
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedMediumInt()I
    .locals 5

    .prologue
    .line 1389
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v0

    .line 1390
    .local v0, "b1":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v1

    .line 1391
    .local v1, "b2":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned()S

    move-result v2

    .line 1392
    .local v2, "b3":I
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1393
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    .line 1396
    :goto_0
    return v3

    :cond_0
    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    goto :goto_0
.end method

.method public getUnsignedMediumInt(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1419
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    .line 1420
    .local v0, "b1":I
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v1

    .line 1421
    .local v1, "b2":I
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v2

    .line 1422
    .local v2, "b3":I
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1423
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    .line 1426
    :goto_0
    return v3

    :cond_0
    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    goto :goto_0
.end method

.method public getUnsignedShort()I
    .locals 2

    .prologue
    .line 1350
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1358
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final hasRemaining()Z
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1245
    const/4 v0, 0x1

    .line 1246
    .local v0, "h":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 1247
    .local v2, "p":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1248
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v4

    add-int v0, v3, v4

    .line 1247
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1250
    :cond_0
    return v0
.end method

.method public indexOf(B)I
    .locals 6
    .param p1, "b"    # B

    .prologue
    .line 2311
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2312
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->arrayOffset()I

    move-result v1

    .line 2313
    .local v1, "arrayOffset":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v5

    add-int v2, v1, v5

    .line 2314
    .local v2, "beginPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v5

    add-int v4, v1, v5

    .line 2315
    .local v4, "limit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->array()[B

    move-result-object v0

    .line 2317
    .local v0, "array":[B
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 2318
    aget-byte v5, v0, v3

    if-ne v5, p1, :cond_1

    .line 2319
    sub-int/2addr v3, v1

    .line 2333
    .end local v0    # "array":[B
    .end local v1    # "arrayOffset":I
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return v3

    .line 2317
    .restart local v0    # "array":[B
    .restart local v1    # "arrayOffset":I
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2323
    .end local v0    # "array":[B
    .end local v1    # "arrayOffset":I
    .end local v2    # "beginPos":I
    .end local v3    # "i":I
    .end local v4    # "limit":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 2324
    .restart local v2    # "beginPos":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v4

    .line 2326
    .restart local v4    # "limit":I
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 2327
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->get(I)B

    move-result v5

    if-eq v5, p1, :cond_0

    .line 2326
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2333
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public final isAutoExpand()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAutoShrink()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDerived()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->derived:Z

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public final limit()I
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public final limit(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newLimit"    # I

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 390
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 391
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 394
    :cond_0
    return-object p0
.end method

.method public final mark()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 403
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 404
    return-object p0
.end method

.method public final markValue()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    return v0
.end method

.method public final minimumCapacity()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    return v0
.end method

.method public final minimumCapacity(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "minimumCapacity"    # I

    .prologue
    .line 150
    if-gez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimumCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    .line 155
    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .prologue
    .line 710
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 711
    return-object p0
.end method

.method public final position()I
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final position(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "newPosition"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 369
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    iget v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    if-le v0, p1, :cond_0

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 373
    :cond_0
    return-object p0
.end method

.method public prefixedDataAvailable(I)Z
    .locals 1
    .param p1, "prefixLength"    # I

    .prologue
    .line 2272
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->prefixedDataAvailable(II)Z

    move-result v0

    return v0
.end method

.method public prefixedDataAvailable(II)Z
    .locals 4
    .param p1, "prefixLength"    # I
    .param p2, "maxDataLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 2280
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return v1

    .line 2285
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2296
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefixLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2287
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsigned(I)S

    move-result v0

    .line 2299
    .local v0, "dataLength":I
    :goto_1
    if-ltz v0, :cond_2

    if-le v0, p2, :cond_3

    .line 2300
    :cond_2
    new-instance v1, Lorg/apache/mina/core/buffer/BufferDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2290
    .end local v0    # "dataLength":I
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getUnsignedShort(I)I

    move-result v0

    .line 2291
    .restart local v0    # "dataLength":I
    goto :goto_1

    .line 2293
    .end local v0    # "dataLength":I
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getInt(I)I

    move-result v0

    .line 2294
    .restart local v0    # "dataLength":I
    goto :goto_1

    .line 2303
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v2

    sub-int/2addr v2, p1

    if-lt v2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final put(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 509
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 510
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 511
    return-object p0
.end method

.method public final put(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 607
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 608
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 609
    return-object p0
.end method

.method public final put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 627
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 628
    return-object p0
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 1334
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "src"    # [B

    .prologue
    .line 1342
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final put([BII)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 636
    invoke-direct {p0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 637
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 638
    return-object p0
.end method

.method public final putChar(C)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # C

    .prologue
    .line 727
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 728
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 729
    return-object p0
.end method

.method public final putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # C

    .prologue
    .line 745
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 746
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    .line 747
    return-object p0
.end method

.method public final putDouble(D)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1107
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1108
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 1109
    return-object p0
.end method

.method public final putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 1125
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1126
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 1127
    return-object p0
.end method

.method public putEnum(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2517
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte"

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2521
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnum(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2505
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2509
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumInt(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2561
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumInt(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2553
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumSet(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2677
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2678
    .local v0, "vector":J
    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2679
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2682
    :cond_0
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2
.end method

.method public putEnumSet(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2664
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2665
    .local v0, "vector":J
    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2666
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2669
    :cond_0
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2
.end method

.method public putEnumSetInt(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2729
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2730
    .local v0, "vector":J
    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2731
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in an int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2734
    :cond_0
    long-to-int v2, v0

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2
.end method

.method public putEnumSetInt(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2716
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2717
    .local v0, "vector":J
    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2718
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in an int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2721
    :cond_0
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2
.end method

.method public putEnumSetLong(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2750
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumSetLong(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2742
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumSetShort(ILjava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(I",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2703
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2704
    .local v0, "vector":J
    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2705
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2708
    :cond_0
    long-to-int v2, v0

    int-to-short v2, v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2
.end method

.method public putEnumSetShort(Ljava/util/Set;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2690
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->toLong(Ljava/util/Set;)J

    move-result-wide v0

    .line 2691
    .local v0, "vector":J
    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2692
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The enum set is too large to fit in a short: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2695
    :cond_0
    long-to-int v2, v0

    int-to-short v2, v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    return-object v2
.end method

.method public putEnumShort(ILjava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2541
    .local p2, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "short"

    invoke-direct {p0, p2, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2545
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putEnumShort(Ljava/lang/Enum;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation

    .prologue
    .line 2529
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "short"

    invoke-direct {p0, p1, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->enumConversionErrorMessage(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2533
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putFloat(F)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1063
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1064
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1065
    return-object p0
.end method

.method public final putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 1081
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1082
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 1083
    return-object p0
.end method

.method public final putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 815
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 816
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 817
    return-object p0
.end method

.method public final putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 993
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 994
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 995
    return-object p0
.end method

.method public final putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 1037
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1038
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1039
    return-object p0
.end method

.method public final putLong(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1019
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1020
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1021
    return-object p0
.end method

.method public putMediumInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 1447
    shr-int/lit8 v3, p1, 0x10

    int-to-byte v0, v3

    .line 1448
    .local v0, "b1":B
    shr-int/lit8 v3, p1, 0x8

    int-to-byte v1, v3

    .line 1449
    .local v1, "b2":B
    int-to-byte v2, p1

    .line 1451
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1452
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1457
    :goto_0
    return-object p0

    .line 1454
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method public putMediumInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 1465
    shr-int/lit8 v3, p2, 0x10

    int-to-byte v0, v3

    .line 1466
    .local v0, "b1":B
    shr-int/lit8 v3, p2, 0x8

    int-to-byte v1, v3

    .line 1467
    .local v1, "b2":B
    int-to-byte v2, p2

    .line 1469
    .local v2, "b3":B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1470
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1475
    :goto_0
    return-object p0

    .line 1472
    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0
.end method

.method public putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2230
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v2

    .line 2231
    .local v2, "oldPos":I
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2233
    :try_start_0
    new-instance v3, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer$4;-><init>(Lorg/apache/mina/core/buffer/AbstractIoBuffer;Ljava/io/OutputStream;)V

    .line 2253
    .local v3, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2254
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2260
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    .line 2261
    .local v1, "newPos":I
    invoke-virtual {p0, v2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2262
    sub-int v4, v1, v2

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2263
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2264
    return-object p0

    .line 2255
    .end local v1    # "newPos":I
    .end local v3    # "out":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/mina/core/buffer/BufferDataException;

    invoke-direct {v4, v0}, Lorg/apache/mina/core/buffer/BufferDataException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 12
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "padding"    # I
    .param p4, "padValue"    # B
    .param p5, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 2041
    packed-switch p2, :pswitch_data_0

    .line 2052
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prefixLength: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2043
    :pswitch_1
    const/16 v5, 0xff

    .line 2055
    .local v5, "maxLength":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v5, :cond_0

    .line 2056
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The specified string is too long."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2046
    .end local v5    # "maxLength":I
    :pswitch_2
    const v5, 0xffff

    .line 2047
    .restart local v5    # "maxLength":I
    goto :goto_0

    .line 2049
    .end local v5    # "maxLength":I
    :pswitch_3
    const v5, 0x7fffffff

    .line 2050
    .restart local v5    # "maxLength":I
    goto :goto_0

    .line 2059
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 2060
    packed-switch p2, :pswitch_data_1

    .line 2154
    :goto_1
    :pswitch_4
    return-object p0

    .line 2062
    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 2065
    :pswitch_6
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 2068
    :pswitch_7
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 2075
    :cond_1
    packed-switch p3, :pswitch_data_2

    .line 2087
    :pswitch_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "padding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2078
    :pswitch_9
    const/4 v7, 0x0

    .line 2090
    .local v7, "padMask":I
    :goto_2
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 2091
    .local v3, "in":Ljava/nio/CharBuffer;
    invoke-virtual {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2092
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v6

    .line 2093
    .local v6, "oldPos":I
    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 2095
    const/4 v2, 0x0

    .line 2099
    .local v2, "expandedState":I
    :goto_3
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2100
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v8, v9}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 2105
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    :goto_4
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v6

    if-le v8, v5, :cond_3

    .line 2106
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The specified string is too long."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2081
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    .end local v2    # "expandedState":I
    .end local v3    # "in":Ljava/nio/CharBuffer;
    .end local v6    # "oldPos":I
    .end local v7    # "padMask":I
    :pswitch_a
    const/4 v7, 0x1

    .line 2082
    .restart local v7    # "padMask":I
    goto :goto_2

    .line 2084
    .end local v7    # "padMask":I
    :pswitch_b
    const/4 v7, 0x3

    .line 2085
    .restart local v7    # "padMask":I
    goto :goto_2

    .line 2102
    .restart local v2    # "expandedState":I
    .restart local v3    # "in":Ljava/nio/CharBuffer;
    .restart local v6    # "oldPos":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_4

    .line 2110
    :cond_3
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2141
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v6

    and-int/2addr v8, v7

    sub-int v8, p3, v8

    move/from16 v0, p4

    invoke-virtual {p0, v0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fill(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2142
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v8

    sub-int v4, v8, v6

    .line 2143
    .local v4, "length":I
    packed-switch p2, :pswitch_data_3

    :pswitch_c
    goto/16 :goto_1

    .line 2145
    :pswitch_d
    add-int/lit8 v8, v6, -0x1

    int-to-byte v9, v4

    invoke-virtual {p0, v8, v9}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_1

    .line 2113
    .end local v4    # "length":I
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2114
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2115
    packed-switch v2, :pswitch_data_4

    .line 2127
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expanded by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but that wasn\'t enough for \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2117
    :pswitch_e
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-direct {p0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2119
    add-int/lit8 v2, v2, 0x1

    .line 2120
    goto/16 :goto_3

    .line 2122
    :pswitch_f
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p5 .. p5}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-direct {p0, v8}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2124
    add-int/lit8 v2, v2, 0x1

    .line 2125
    goto/16 :goto_3

    .line 2135
    :cond_5
    const/4 v2, 0x0

    .line 2137
    :cond_6
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto/16 :goto_3

    .line 2148
    .restart local v4    # "length":I
    :pswitch_10
    add-int/lit8 v8, v6, -0x2

    int-to-short v9, v4

    invoke-virtual {p0, v8, v9}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_1

    .line 2151
    :pswitch_11
    add-int/lit8 v8, v6, -0x4

    invoke-virtual {p0, v8, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    goto/16 :goto_1

    .line 2041
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2060
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 2075
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 2143
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_11
    .end packed-switch

    .line 2115
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 6
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "padding"    # I
    .param p4, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 2030
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IIBLjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "prefixLength"    # I
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 2020
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public putPrefixedString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 2011
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->putPrefixedString(Ljava/lang/CharSequence;IILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 789
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 790
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 791
    return-object p0
.end method

.method public final putShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 771
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 772
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 773
    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 8
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "fieldSize"    # I
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1848
    invoke-static {p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->checkFieldSize(I)V

    .line 1850
    if-nez p2, :cond_0

    .line 1910
    :goto_0
    return-object p0

    .line 1854
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1856
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-16"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 1858
    .local v4, "utf16":Z
    if-eqz v4, :cond_1

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1

    .line 1859
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "fieldSize is not even."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1862
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v3

    .line 1863
    .local v3, "oldLimit":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v5

    add-int v1, v5, p2

    .line 1865
    .local v1, "end":I
    if-ge v3, v1, :cond_2

    .line 1866
    new-instance v5, Ljava/nio/BufferOverflowException;

    invoke-direct {v5}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v5

    .line 1869
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 1870
    if-nez v4, :cond_3

    .line 1871
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1876
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 1873
    :cond_3
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1874
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    .line 1880
    :cond_4
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 1881
    .local v2, "in":Ljava/nio/CharBuffer;
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1882
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1886
    :goto_2
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1887
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p3, v2, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 1892
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1898
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1900
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v5

    if-ge v5, v1, :cond_6

    .line 1901
    if-nez v4, :cond_9

    .line 1902
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1909
    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    .line 1889
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_3

    .line 1895
    :cond_8
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2

    .line 1904
    :cond_9
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1905
    invoke-virtual {p0, v7}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_4
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 7
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1839
    :cond_0
    return-object p0

    .line 1797
    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 1798
    .local v2, "in":Ljava/nio/CharBuffer;
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1800
    const/4 v1, 0x0

    .line 1804
    .local v1, "expandedState":I
    :goto_0
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1805
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 1810
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1813
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1814
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isAutoExpand()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1815
    packed-switch v1, :pswitch_data_0

    .line 1827
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expanded by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but that wasn\'t enough for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1807
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_1

    .line 1817
    :pswitch_0
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1819
    add-int/lit8 v1, v1, 0x1

    .line 1820
    goto :goto_0

    .line 1822
    :pswitch_1
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {p0, v3}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1824
    add-int/lit8 v1, v1, 0x1

    .line 1825
    goto/16 :goto_0

    .line 1835
    :cond_3
    const/4 v1, 0x0

    .line 1837
    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    goto/16 :goto_0

    .line 1815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public putUnsigned(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 519
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 520
    return-object p0
.end method

.method public putUnsigned(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 555
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 556
    return-object p0
.end method

.method public putUnsigned(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 528
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 529
    return-object p0
.end method

.method public putUnsigned(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 564
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 565
    return-object p0
.end method

.method public putUnsigned(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 582
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 583
    return-object p0
.end method

.method public putUnsigned(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 546
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 547
    return-object p0
.end method

.method public putUnsigned(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 573
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 574
    return-object p0
.end method

.method public putUnsigned(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 537
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 538
    return-object p0
.end method

.method public final putUnsignedInt(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 825
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 826
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 827
    return-object p0
.end method

.method public final putUnsignedInt(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 865
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 866
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 867
    return-object p0
.end method

.method public final putUnsignedInt(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 835
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 836
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 837
    return-object p0
.end method

.method public final putUnsignedInt(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 875
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 876
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 877
    return-object p0
.end method

.method public final putUnsignedInt(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 895
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 896
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p2

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 897
    return-object p0
.end method

.method public final putUnsignedInt(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 855
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 856
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 857
    return-object p0
.end method

.method public final putUnsignedInt(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 885
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 886
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 887
    return-object p0
.end method

.method public final putUnsignedInt(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 845
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 846
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 847
    return-object p0
.end method

.method public final putUnsignedShort(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 905
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 906
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 907
    return-object p0
.end method

.method public final putUnsignedShort(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 945
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 946
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 947
    return-object p0
.end method

.method public final putUnsignedShort(IB)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    .prologue
    .line 915
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 916
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    and-int/lit16 v1, p2, 0xff

    int-to-short v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 917
    return-object p0
.end method

.method public final putUnsignedShort(II)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 955
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 956
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 957
    return-object p0
.end method

.method public final putUnsignedShort(IJ)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 975
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 976
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int v1, p2

    int-to-short v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 977
    return-object p0
.end method

.method public final putUnsignedShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 935
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 936
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 937
    return-object p0
.end method

.method public final putUnsignedShort(J)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 965
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 966
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 967
    return-object p0
.end method

.method public final putUnsignedShort(S)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 925
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 926
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 927
    return-object p0
.end method

.method public final remaining()I
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final reset()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 421
    return-object p0
.end method

.method public final rewind()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    .line 469
    return-object p0
.end method

.method public final setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "autoExpand"    # Z

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand:Z

    .line 239
    return-object p0
.end method

.method public final setAutoShrink(Z)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 2
    .param p1, "autoShrink"    # Z

    .prologue
    .line 247
    iget-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be shrinked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput-boolean p1, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoShrink:Z

    .line 252
    return-object p0
.end method

.method public final shrink()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 10

    .prologue
    .line 306
    iget-boolean v8, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    if-nez v8, :cond_0

    .line 307
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v7

    .line 312
    .local v7, "position":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    .line 313
    .local v1, "capacity":I
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v2

    .line 314
    .local v2, "limit":I
    if-ne v1, v2, :cond_2

    .line 352
    :cond_1
    :goto_0
    return-object p0

    .line 318
    :cond_2
    move v5, v1

    .line 319
    .local v5, "newCapacity":I
    iget v8, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->minimumCapacity:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 321
    .local v3, "minCapacity":I
    :goto_1
    ushr-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_3

    .line 327
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 329
    if-eq v5, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 338
    .local v0, "bo":Ljava/nio/ByteOrder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 339
    .local v6, "oldBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getAllocator()Lorg/apache/mina/core/buffer/IoBufferAllocator;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v9

    invoke-interface {v8, v5, v9}, Lorg/apache/mina/core/buffer/IoBufferAllocator;->allocateNioBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 341
    .local v4, "newBuf":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 342
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 344
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf(Ljava/nio/ByteBuffer;)V

    .line 347
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 349
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 350
    const/4 v8, -0x1

    iput v8, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->mark:I

    goto :goto_0

    .line 324
    .end local v0    # "bo":Ljava/nio/ByteOrder;
    .end local v4    # "newBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "oldBuf":Ljava/nio/ByteBuffer;
    :cond_3
    ushr-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public skip(I)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2341
    invoke-direct {p0, p1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->autoExpand(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2342
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final slice()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->recapacityAllowed:Z

    .line 1174
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->slice0()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract slice0()Lorg/apache/mina/core/buffer/IoBuffer;
.end method

.method public final sweep()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 440
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final sweep(B)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 449
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->fillAndReset(BI)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    const-string v1, "DirectBuffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :goto_0
    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1311
    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1313
    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {p0}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1315
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/apache/mina/core/buffer/AbstractIoBuffer;->getHexDump(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1307
    :cond_0
    const-string v1, "HeapBuffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
