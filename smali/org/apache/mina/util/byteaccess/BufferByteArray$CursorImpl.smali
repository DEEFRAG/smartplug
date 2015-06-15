.class Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "BufferByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/BufferByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorImpl"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 319
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    .line 321
    return-void
.end method


# virtual methods
.method public get()B
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(I)B

    move-result v0

    .line 393
    .local v0, "b":B
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 394
    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 414
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(ILorg/apache/mina/core/buffer/IoBuffer;)V

    .line 415
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 416
    return-void
.end method

.method public getChar()C
    .locals 3

    .prologue
    .line 540
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getChar(I)C

    move-result v0

    .line 541
    .local v0, "c":C
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 542
    return v0
.end method

.method public getDouble()D
    .locals 4

    .prologue
    .line 519
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v3, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getDouble(I)D

    move-result-wide v0

    .line 520
    .local v0, "d":D
    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 521
    return-wide v0
.end method

.method public getFloat()F
    .locals 3

    .prologue
    .line 498
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getFloat(I)F

    move-result v0

    .line 499
    .local v0, "f":F
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 500
    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getInt(I)I

    move-result v0

    .line 457
    .local v0, "i":I
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 458
    return v0
.end method

.method public getLong()J
    .locals 4

    .prologue
    .line 477
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v3, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v2, v3}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getLong(I)J

    move-result-wide v0

    .line 478
    .local v0, "l":J
    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 479
    return-wide v0
.end method

.method public getRemaining()I
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShort()S
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getShort(I)S

    move-result v0

    .line 436
    .local v0, "s":S
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 437
    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(IB)V

    .line 404
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 405
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 424
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    .line 425
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(ILorg/apache/mina/core/buffer/IoBuffer;)V

    .line 426
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 427
    return-void
.end method

.method public putChar(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 551
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putChar(IC)V

    .line 552
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 553
    return-void
.end method

.method public putDouble(D)V
    .locals 2
    .param p1, "d"    # D

    .prologue
    .line 530
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putDouble(ID)V

    .line 531
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 532
    return-void
.end method

.method public putFloat(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putFloat(IF)V

    .line 510
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 511
    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putInt(II)V

    .line 468
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 469
    return-void
.end method

.method public putLong(J)V
    .locals 2
    .param p1, "l"    # J

    .prologue
    .line 488
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putLong(IJ)V

    .line 489
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 490
    return-void
.end method

.method public putShort(S)V
    .locals 2
    .param p1, "s"    # S

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putShort(IS)V

    .line 447
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 448
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 356
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 360
    :cond_1
    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 361
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 366
    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    .line 367
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 372
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 373
    .local v0, "slice":Lorg/apache/mina/util/byteaccess/ByteArray;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    .line 374
    return-object v0
.end method
