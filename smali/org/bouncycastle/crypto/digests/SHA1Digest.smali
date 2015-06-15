.class public Lorg/bouncycastle/crypto/digests/SHA1Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA1Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    return-void
.end method

.method private f(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 13

    const/16 v11, 0x4f

    const/16 v10, 0x1e

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/16 v0, 0x10

    :goto_0
    if-gt v0, v11, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v4, v0, -0x3

    aget v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v5, v0, -0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v5, v0, -0xe

    aget v4, v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    move v0, v1

    :goto_1
    const/16 v7, 0x13

    if-gt v0, v7, :cond_1

    invoke-direct {p0, v6, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, 0x5a827999

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto :goto_1

    :cond_1
    const/16 v0, 0x14

    :goto_2
    const/16 v7, 0x27

    if-gt v0, v7, :cond_2

    invoke-direct {p0, v6, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, 0x6ed9eba1

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto :goto_2

    :cond_2
    const/16 v0, 0x28

    :goto_3
    const/16 v7, 0x3b

    if-gt v0, v7, :cond_3

    invoke-direct {p0, v6, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, -0x70e44324

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto :goto_3

    :cond_3
    const/16 v0, 0x3c

    :goto_4
    if-gt v0, v11, :cond_4

    invoke-direct {p0, v6, v9}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v7

    invoke-direct {p0, v5, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v7, v7, v0

    add-int/2addr v2, v7

    const v7, -0x359d3e2a    # -3715189.5f

    add-int/2addr v7, v2

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->rotateLeft(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v5, v6

    move v6, v7

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v12

    goto :goto_4

    :cond_4
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    move v0, v1

    :goto_5
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
