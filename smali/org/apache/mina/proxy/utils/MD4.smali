.class public Lorg/apache/mina/proxy/utils/MD4;
.super Ljava/security/MessageDigestSpi;
.source "MD4.java"


# static fields
.field private static final A:I = 0x67452301

.field private static final B:I = -0x10325477

.field public static final BYTE_BLOCK_LENGTH:I = 0x40

.field public static final BYTE_DIGEST_LENGTH:I = 0x10

.field private static final C:I = -0x67452302

.field private static final D:I = 0x10325476


# instance fields
.field private a:I

.field private b:I

.field private final buffer:[B

.field private c:I

.field private d:I

.field private msgLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 64
    const v0, 0x67452301

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 66
    const v0, -0x10325477

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 68
    const v0, -0x67452302

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 70
    const v0, 0x10325476

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 80
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    .line 87
    return-void
.end method

.method private pad()[B
    .locals 12

    .prologue
    .line 194
    iget-wide v8, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v10, 0x40

    rem-long/2addr v8, v10

    long-to-int v7, v8

    .line 195
    .local v7, "pos":I
    const/16 v8, 0x38

    if-ge v7, v8, :cond_0

    rsub-int/lit8 v6, v7, 0x40

    .line 196
    .local v6, "padLength":I
    :goto_0
    new-array v5, v6, [B

    .line 199
    .local v5, "pad":[B
    const/4 v8, 0x0

    const/16 v9, -0x80

    aput-byte v9, v5, v8

    .line 201
    iget-wide v8, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const/4 v10, 0x3

    shl-long v0, v8, v10

    .line 202
    .local v0, "bits":J
    add-int/lit8 v3, v6, -0x8

    .line 203
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_1
    const/16 v8, 0x8

    if-ge v2, v8, :cond_1

    .line 204
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    shl-int/lit8 v8, v2, 0x3

    ushr-long v8, v0, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    .line 203
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 195
    .end local v0    # "bits":J
    .end local v2    # "i":I
    .end local v4    # "index":I
    .end local v5    # "pad":[B
    .end local v6    # "padLength":I
    :cond_0
    rsub-int v6, v7, 0x80

    goto :goto_0

    .line 207
    .restart local v0    # "bits":J
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "pad":[B
    .restart local v6    # "padLength":I
    :cond_1
    return-object v5
.end method

.method private process([BI)V
    .locals 11
    .param p1, "in"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 219
    iget v1, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 220
    .local v1, "aa":I
    iget v2, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 221
    .local v2, "bb":I
    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 222
    .local v3, "cc":I
    iget v4, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 225
    .local v4, "dd":I
    const/16 v7, 0x10

    new-array v0, v7, [I

    .line 226
    .local v0, "X":[I
    const/4 v5, 0x0

    .local v5, "i":I
    move v6, p2

    .end local p2    # "offset":I
    .local v6, "offset":I
    :goto_0
    const/16 v7, 0x10

    if-ge v5, v7, :cond_0

    .line 227
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 p2, v6, 0x1

    .end local v6    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "offset":I
    .restart local v6    # "offset":I
    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v0, v5

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 233
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 234
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 235
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x7

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x19

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 236
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 237
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 238
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 239
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0x13

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0xd

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 240
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 241
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 242
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x5

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 243
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x7

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x19

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 244
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x6

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 245
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 246
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x7

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 247
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0x13

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0xd

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 248
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0x8

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 249
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 250
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0x9

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 251
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x7

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x19

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 252
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xa

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 253
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 254
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xb

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 255
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0x13

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0xd

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 256
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xc

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 257
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 258
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xd

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 259
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x7

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x19

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 260
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xe

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 261
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 262
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xf

    aget v9, v0, v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 263
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0x13

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0xd

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 266
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 267
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 268
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 269
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x5

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x1b

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 270
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0x8

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 271
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 272
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xc

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 273
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xd

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x13

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 274
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 275
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 276
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x5

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 277
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x5

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x1b

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 278
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0x9

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 279
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 280
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xd

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 281
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xd

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x13

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 282
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 283
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 284
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x6

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 285
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x5

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x1b

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 286
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xa

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 287
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 288
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xe

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 289
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xd

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x13

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 290
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 291
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 292
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/4 v9, 0x7

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 293
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x5

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x1b

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 294
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xb

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 295
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 296
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v10, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    const/16 v9, 0xf

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x5a827999

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 297
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xd

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x13

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 300
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 301
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 302
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    const/16 v9, 0x8

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 303
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 304
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 305
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 306
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    const/16 v9, 0xc

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 307
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xf

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 308
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 309
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 310
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    const/16 v9, 0xa

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 311
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 312
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    const/4 v9, 0x6

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 313
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 314
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    const/16 v9, 0xe

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 315
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xf

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 316
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 317
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 318
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    const/16 v9, 0x9

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 319
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 320
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    const/4 v9, 0x5

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 321
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 322
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    const/16 v9, 0xd

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 323
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xf

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 324
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 325
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    shl-int/lit8 v7, v7, 0x3

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v8, v8, 0x1d

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 326
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    xor-int/2addr v8, v9

    const/16 v9, 0xb

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 327
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    shl-int/lit8 v7, v7, 0x9

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 328
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    xor-int/2addr v8, v9

    const/4 v9, 0x7

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 329
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    shl-int/lit8 v7, v7, 0xb

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v8, v8, 0x15

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 330
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    xor-int/2addr v8, v9

    iget v9, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    xor-int/2addr v8, v9

    const/16 v9, 0xf

    aget v9, v0, v9

    add-int/2addr v8, v9

    const v9, 0x6ed9eba1

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 331
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    shl-int/lit8 v7, v7, 0xf

    iget v8, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v8, v8, 0x11

    or-int/2addr v7, v8

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 334
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    add-int/2addr v7, v1

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 335
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    add-int/2addr v7, v2

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 336
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    add-int/2addr v7, v3

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 337
    iget v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    add-int/2addr v7, v4

    iput v7, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 338
    return-void
.end method


# virtual methods
.method protected engineDigest([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 162
    if-ltz p2, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 163
    :cond_0
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "Wrong offset or not enough space to store the digest"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    const/16 v1, 0x10

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    .local v0, "destLength":I
    invoke-virtual {p0}, Lorg/apache/mina/proxy/utils/MD4;->engineDigest()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return v0
.end method

.method protected engineDigest()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Lorg/apache/mina/proxy/utils/MD4;->pad()[B

    move-result-object v1

    .line 144
    .local v1, "p":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/mina/proxy/utils/MD4;->engineUpdate([BII)V

    .line 145
    const/16 v2, 0x10

    new-array v0, v2, [B

    iget v2, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x5

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x6

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x7

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x8

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0x9

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xa

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xb

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xc

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xe

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xf

    iget v3, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 152
    .local v0, "digest":[B
    invoke-virtual {p0}, Lorg/apache/mina/proxy/utils/MD4;->engineReset()V

    .line 154
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x10

    return v0
.end method

.method protected engineReset()V
    .locals 2

    .prologue
    .line 175
    const v0, 0x67452301

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    .line 176
    const v0, -0x10325477

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    .line 177
    const v0, -0x67452302

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    .line 178
    const v0, 0x10325476

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    .line 180
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 5
    .param p1, "b"    # B

    .prologue
    .line 102
    iget-wide v1, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v3, 0x40

    rem-long/2addr v1, v3

    long-to-int v0, v1

    .line 103
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    aput-byte p1, v1, v0

    .line 104
    iget-wide v1, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    .line 107
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/mina/proxy/utils/MD4;->process([BI)V

    .line 110
    :cond_0
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 116
    iget-wide v3, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v5, 0x40

    rem-long/2addr v3, v5

    long-to-int v2, v3

    .line 117
    .local v2, "pos":I
    rsub-int/lit8 v1, v2, 0x40

    .line 118
    .local v1, "nbOfCharsToFillBuf":I
    const/4 v0, 0x0

    .line 120
    .local v0, "blkStart":I
    iget-wide v3, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    .line 123
    if-lt p3, v1, :cond_1

    .line 124
    iget-object v3, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v3, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/apache/mina/proxy/utils/MD4;->process([BI)V

    .line 126
    move v0, v1

    .line 127
    :goto_0
    add-int/lit8 v3, v0, 0x40

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_0

    .line 128
    add-int v3, p2, v0

    invoke-direct {p0, p1, v3}, Lorg/apache/mina/proxy/utils/MD4;->process([BI)V

    .line 127
    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 130
    :cond_0
    const/4 v2, 0x0

    .line 134
    :cond_1
    if-ge v0, p3, :cond_2

    .line 135
    add-int v3, p2, v0

    iget-object v4, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    sub-int v5, p3, v0

    invoke-static {p1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :cond_2
    return-void
.end method
