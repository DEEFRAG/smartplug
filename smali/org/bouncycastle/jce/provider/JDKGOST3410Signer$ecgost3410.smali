.class public Lorg/bouncycastle/jce/provider/JDKGOST3410Signer$ecgost3410;
.super Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecgost3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "GOST3411withECGOST3410"

    new-instance v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKGOST3410Signer;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSA;)V

    return-void
.end method
