.class public Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.super Ljava/security/Signature;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKGOST3410Signer$ecgost3410;,
        Lorg/bouncycastle/jce/provider/JDKGOST3410Signer$gost3410;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSA;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lorg/bouncycastle/crypto/DSA;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v4, 0x1

    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lorg/bouncycastle/crypto/DSA;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/GOST3410Util;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lorg/bouncycastle/crypto/DSA;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/GOST3410Key;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/GOST3410Util;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream(Ljava/io/InputStream;)Ljava/security/PublicKey;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t recognise key type in DSA based signer"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v1, 0x40

    :try_start_0
    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v2, v0}, Lorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    array-length v4, v0

    rsub-int/lit8 v4, v4, 0x20

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    array-length v3, v2

    rsub-int/lit8 v3, v3, 0x40

    array-length v4, v2

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object v1

    :cond_0
    const/4 v3, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    rsub-int/lit8 v4, v4, 0x20

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    rsub-int/lit8 v3, v3, 0x40

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/16 v6, 0x20

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v0, 0x20

    :try_start_0
    new-array v3, v0, [B

    const/16 v0, 0x20

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    if-eq v0, v6, :cond_0

    aget-byte v5, p1, v0

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-eq v0, v6, :cond_1

    add-int/lit8 v5, v0, 0x20

    aget-byte v5, p1, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v0, v5

    const/4 v3, 0x1

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lorg/bouncycastle/crypto/DSA;

    aget-object v1, v0, v1

    aget-object v0, v0, v8

    invoke-interface {v3, v2, v1, v0}, Lorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "error decoding signature bytes."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
