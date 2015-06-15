.class public Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add([B[BI)V
    .locals 3

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p3

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    ushr-int/lit8 v1, v0, 0x8

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-byte v2, v1

    aput-byte v2, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 18

    const/16 v1, 0x14

    new-array v7, v1, [B

    const/16 v1, 0x14

    new-array v8, v1, [B

    const/16 v1, 0x14

    new-array v9, v1, [B

    const/16 v1, 0x14

    new-array v10, v1, [B

    new-instance v11, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v11}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v12, v1, 0xa0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    div-int/lit8 v1, v1, 0x8

    new-array v13, v1, [B

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x0

    array-length v4, v7

    invoke-virtual {v11, v7, v2, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v7

    invoke-static {v7, v2, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    const/4 v2, 0x0

    array-length v4, v9

    invoke-virtual {v11, v9, v2, v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    const/4 v2, 0x0

    invoke-virtual {v11, v9, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    const/4 v2, 0x0

    :goto_1
    array-length v4, v10

    if-eq v2, v4, :cond_1

    aget-byte v4, v8, v2

    aget-byte v5, v9, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget-byte v4, v10, v2

    or-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    aput-byte v4, v10, v2

    const/16 v2, 0x13

    aget-byte v4, v10, v2

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v10, v2

    new-instance v4, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v4, v2, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    const/4 v2, 0x2

    move/from16 v17, v2

    move-object v2, v3

    move v3, v5

    move/from16 v5, v17

    :goto_2
    const/16 v6, 0x1000

    if-ge v3, v6, :cond_3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_2

    add-int v6, v5, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v6}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    const/4 v6, 0x0

    array-length v14, v8

    invoke-virtual {v11, v8, v6, v14}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    const/4 v6, 0x0

    invoke-virtual {v11, v8, v6}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    const/4 v6, 0x0

    array-length v14, v13

    add-int/lit8 v15, v2, 0x1

    array-length v0, v8

    move/from16 v16, v0

    mul-int v15, v15, v16

    sub-int/2addr v14, v15

    array-length v15, v8

    invoke-static {v8, v6, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int v2, v5, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    const/4 v2, 0x0

    array-length v6, v8

    invoke-virtual {v11, v8, v2, v6}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    array-length v2, v8

    array-length v6, v13

    array-length v14, v8

    mul-int/2addr v14, v12

    sub-int/2addr v6, v14

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    array-length v14, v13

    array-length v15, v8

    mul-int/2addr v15, v12

    sub-int/2addr v14, v15

    invoke-static {v8, v2, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    aget-byte v6, v13, v2

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v13, v2

    new-instance v2, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v6, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v14, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    :cond_3
    move/from16 v17, v3

    move-object v3, v2

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v3, v12, 0x1

    add-int/2addr v3, v5

    move v5, v3

    move v3, v6

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_6
    new-instance v5, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v5, v6, v8}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v6, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_6

    sget-object v6, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_6

    invoke-virtual {v5, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_6

    new-instance v1, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v6, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v6, v7, v2}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v1
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    iput p2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
