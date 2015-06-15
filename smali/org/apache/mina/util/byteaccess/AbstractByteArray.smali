.class abstract Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.super Ljava/lang/Object;
.source "AbstractByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 49
    if-ne p1, p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v8

    .line 54
    :cond_1
    instance-of v10, p1, Lorg/apache/mina/util/byteaccess/ByteArray;

    if-nez v10, :cond_2

    move v8, v9

    .line 56
    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 58
    check-cast v4, Lorg/apache/mina/util/byteaccess/ByteArray;

    .line 60
    .local v4, "otherByteArray":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->first()I

    move-result v10

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->first()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->last()I

    move-result v10

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move v8, v9

    .line 63
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v1

    .line 67
    .local v1, "cursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v5

    .line 68
    .local v5, "otherCursor":Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v7

    .local v7, "remaining":I
    :cond_5
    if-lez v7, :cond_0

    .line 71
    const/4 v10, 0x4

    if-lt v7, v10, :cond_6

    .line 73
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v2

    .line 74
    .local v2, "i":I
    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v6

    .line 75
    .local v6, "otherI":I
    if-eq v2, v6, :cond_5

    move v8, v9

    .line 77
    goto :goto_0

    .line 82
    .end local v2    # "i":I
    .end local v6    # "otherI":I
    :cond_6
    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    .line 83
    .local v0, "b":B
    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v3

    .line 84
    .local v3, "otherB":B
    if-eq v0, v3, :cond_5

    move v8, v9

    .line 86
    goto :goto_0
.end method

.method public final length()I
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->last()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;->first()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
