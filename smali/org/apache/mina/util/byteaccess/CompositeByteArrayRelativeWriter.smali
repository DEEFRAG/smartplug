.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.super Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.source "CompositeByteArrayRelativeWriter.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$NopExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;
    }
.end annotation


# instance fields
.field private final autoFlush:Z

.field private final expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

.field private final flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;Z)V
    .locals 0
    .param p1, "cba"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p2, "expander"    # Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;
    .param p3, "flusher"    # Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;
    .param p4, "autoFlush"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    .line 141
    iput-object p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    .line 142
    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    .line 143
    iput-boolean p4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    .line 144
    return-void
.end method

.method private prepareForAccess(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->last()I

    move-result v2

    sub-int v0, v1, v2

    .line 150
    .local v0, "underflow":I
    if-lez v0, :cond_0

    .line 152
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;->expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected cursorPassedFirstComponent()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    .line 163
    return-void
.end method

.method public flushTo(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 172
    .local v0, "removed":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    invoke-interface {v1, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;->flush(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 173
    return-void
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 201
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 202
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 210
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 211
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 212
    return-void
.end method

.method public putChar(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 270
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 271
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 272
    return-void
.end method

.method public putDouble(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 260
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 261
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 262
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 250
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 251
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 252
    return-void
.end method

.method public putInt(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 230
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 231
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 232
    return-void
.end method

.method public putLong(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 240
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 241
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 242
    return-void
.end method

.method public putShort(S)V
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 220
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    .line 221
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 222
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->skip(I)V

    .line 182
    return-void
.end method
