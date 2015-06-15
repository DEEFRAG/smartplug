.class public Lorg/apache/mina/proxy/utils/ByteUtilities;
.super Ljava/lang/Object;
.source "ByteUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 276
    .local v0, "bts":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 277
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v0
.end method

.method public static asHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 253
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "code":Ljava/lang/String;
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 255
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    if-eqz p1, :cond_1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 261
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "code":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final changeByteEndianess([BII)V
    .locals 3
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 181
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 182
    aget-byte v1, p0, v0

    .line 183
    .local v1, "tmp":B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 184
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p0, v2

    .line 181
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 186
    .end local v1    # "tmp":B
    :cond_0
    return-void
.end method

.method public static final changeWordEndianess([BII)V
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 157
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 158
    aget-byte v1, p0, v0

    .line 159
    .local v1, "tmp":B
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 160
    add-int/lit8 v2, v0, 0x3

    aput-byte v1, p0, v2

    .line 161
    add-int/lit8 v2, v0, 0x1

    aget-byte v1, p0, v2

    .line 162
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, p0, v2

    .line 163
    add-int/lit8 v2, v0, 0x2

    aput-byte v1, p0, v2

    .line 157
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 165
    .end local v1    # "tmp":B
    :cond_0
    return-void
.end method

.method public static final encodeString(Ljava/lang/String;Z)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "useUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getUTFStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static final getOEMStringAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getUTFStringAsByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static intToNetworkByteOrder(I[BII)V
    .locals 3
    .param p0, "num"    # I
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 82
    const/4 v1, 0x4

    if-le p3, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot handle more than 4 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 88
    add-int v1, p2, v0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 89
    ushr-int/lit8 p0, p0, 0x8

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public static intToNetworkByteOrder(II)[B
    .locals 2
    .param p0, "num"    # I
    .param p1, "count"    # I

    .prologue
    .line 64
    new-array v0, p1, [B

    .line 65
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(I[BII)V

    .line 67
    return-object v0
.end method

.method public static final isFlagSet(II)Z
    .locals 1
    .param p0, "flagSet"    # I
    .param p1, "testFlag"    # I

    .prologue
    .line 337
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final makeIntFromByte2([B)I
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([BI)I

    move-result v0

    return v0
.end method

.method public static final makeIntFromByte2([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 325
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static final makeIntFromByte4([B)I
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([BI)I

    move-result v0

    return v0
.end method

.method public static final makeIntFromByte4([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 303
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static networkByteOrderToInt([BII)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 41
    const/4 v2, 0x4

    if-le p2, v2, :cond_0

    .line 42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot handle more than 4 bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 49
    shl-int/lit8 v1, v1, 0x8

    .line 50
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return v1
.end method

.method public static final writeInt(I)[B
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final writeInt(I[BI)[B
    .locals 2
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 135
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 136
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 137
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 138
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 140
    return-object p1
.end method

.method public static final writeShort(S)[B
    .locals 2
    .param p0, "v"    # S

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static final writeShort(S[BI)[B
    .locals 2
    .param p0, "v"    # S
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 111
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 112
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 114
    return-object p1
.end method
