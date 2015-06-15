.class public abstract Lorg/apache/mina/util/byteaccess/BufferByteArray;
.super Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.source "BufferByteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;
    }
.end annotation


# instance fields
.field protected bb:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 56
    return-void
.end method


# virtual methods
.method public cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 121
    new-instance v0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;I)V

    return-object v0
.end method

.method public first()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public abstract free()V
.end method

.method public get(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public get(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "other"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 185
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 186
    return-void
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIoBuffers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public last()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 158
    return-void
.end method

.method public put(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 176
    return-void
.end method

.method public put(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "other"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 195
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 196
    return-void
.end method

.method public putChar(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 304
    return-void
.end method

.method public putDouble(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "d"    # D

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 286
    return-void
.end method

.method public putFloat(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "f"    # F

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 268
    return-void
.end method

.method public putInt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "i"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 232
    return-void
.end method

.method public putLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "l"    # J

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 250
    return-void
.end method

.method public putShort(IS)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # S

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 214
    return-void
.end method

.method public slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 84
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    .line 85
    .local v0, "oldLimit":I
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 86
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    add-int v3, p1, p2

    invoke-virtual {v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 87
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 88
    .local v1, "slice":Lorg/apache/mina/core/buffer/IoBuffer;
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 89
    new-instance v2, Lorg/apache/mina/util/byteaccess/BufferByteArray$1;

    invoke-direct {v2, p0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray$1;-><init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-object v2
.end method
