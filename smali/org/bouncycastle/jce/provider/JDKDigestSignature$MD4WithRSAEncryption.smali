.class public Lorg/bouncycastle/jce/provider/JDKDigestSignature$MD4WithRSAEncryption;
.super Lorg/bouncycastle/jce/provider/JDKDigestSignature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKDigestSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD4WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    const-string v0, "MD4withRSA"

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKDigestSignature$MD4WithRSAEncryption;->md4:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;-><init>()V

    new-instance v3, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v4, Lorg/bouncycastle/crypto/engines/RSAEngine;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/engines/RSAEngine;-><init>()V

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/JDKDigestSignature;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
