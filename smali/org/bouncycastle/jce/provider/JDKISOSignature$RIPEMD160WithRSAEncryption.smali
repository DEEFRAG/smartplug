.class public Lorg/bouncycastle/jce/provider/JDKISOSignature$RIPEMD160WithRSAEncryption;
.super Lorg/bouncycastle/jce/provider/JDKISOSignature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKISOSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIPEMD160WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "RIPEMD160withRSA/ISO9796-2"

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKISOSignature;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
